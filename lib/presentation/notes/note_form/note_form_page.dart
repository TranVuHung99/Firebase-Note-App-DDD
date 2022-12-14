import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/application/notes/note_form/note_form_bloc.dart';
import 'package:firebase_ddd_note_app/domain/notes/note.dart';
import 'package:firebase_ddd_note_app/injection.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/widget/add_todo_tile_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/widget/body_field_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/widget/color_field_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/widget/todos_list_widget.dart';
import 'package:firebase_ddd_note_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class NoteFormPage extends StatelessWidget {
  final Note? editedNoted;

  const NoteFormPage({
    Key? key,
    this.editedNoted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NoteFormBloc>()
        ..add(
          NoteFormEvent.initialized(optionOf(editedNoted)),
        ),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
          listenWhen: (prev, curr) => prev.saveFailureOrSuccessOption != curr.saveFailureOrSuccessOption,
          listener: (context, state) {
            state.saveFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                        unexpected: (_) => 'Unexpected error occured, please contact support.',
                        unableToUpdate: (_) => "Couldn't update the note. Was it deleted from another device?",
                        insufficientPermission: (_) => 'Insufficient permissions ???',
                      ),
                    ).show(context);
                  },
                  (_) {
                    context.router.popUntil((route) => route.settings.name == NoteOverViewRoute.name);
                  },
                );
              },
            );
          },
          buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
          builder: (context, state) {
            return Stack(
              children: [
                const NoteFormPageScaffold(),
                SavingInProgressOverlay(
                  isSaving: state.isSaving,
                )
              ],
            );
          }),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({Key? key, required this.isSaving}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  const NoteFormPageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (prev, curr) => prev.isEditing != curr.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit a note' : 'Create a note');
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NoteFormBloc>().add(const NoteFormEvent.saved());
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
        buildWhen: (p, c) => p.showErrorMessage != c.showErrorMessage,
        builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormTodos(),
            child: Form(
              autovalidateMode: state.showErrorMessage ? AutovalidateMode.always : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BodyField(),
                    ColorField(),
                    TodoList(),
                    AddTodoTile()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
