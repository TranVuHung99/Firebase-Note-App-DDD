import 'package:firebase_ddd_note_app/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/widget/critical_failure_display_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/widget/error_note_card_widget.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/widget/note_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteOverviewBodyWidget extends StatelessWidget {
  const NoteOverviewBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadingProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadingSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final note = state.notes[index];
                if (note.failureOption.isSome()) {
                  return ErrorNoteCard(note: note);
                } else {
                  return NoteCardWidget(note: note,);
                }
              },
              itemCount: state.notes.size,
            );
          },
          loadingFailure: (state) {
            return CriticalFailureDisplay(failure: state.noteFailure,);
          },
        );
      },
    );
  }
}
