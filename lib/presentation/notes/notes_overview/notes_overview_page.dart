import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_note_app/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_note_app/application/notes/note_actor/note_actor_bloc.dart';
import 'package:firebase_ddd_note_app/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_note_app/injection.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/widget/note_overview_body_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/widget/uncompleted_switch.dart';
import 'package:firebase_ddd_note_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteOverViewPage extends StatelessWidget {
  const NoteOverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final authBloc = context.read<AuthBloc>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(
              const NoteWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) => router.replace(const SignInRoute()),
                orElse: () {},
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (state) {
                  FlushbarHelper.createError(
                    message: state.noteFailure.map(
                      unexpected: (_) => 'Unexpected error occurred while deleting, please contact support.',
                      insufficientPermission: (_) => 'Insufficient permissions ❌',
                      unableToUpdate: (_) => 'Impossible error',
                    ),
                    duration: const Duration(seconds: 5),
                  ).show(context);
                },
                orElse: () {},
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Notes'),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                authBloc.add(const AuthEvent.signOut());
              },
            ),
            actions: const <Widget>[
              UnCompletedSwitch()
            ],
          ),
          body: const NoteOverviewBodyWidget(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.router.push(NoteFormRoute(editedNoted: null));
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
