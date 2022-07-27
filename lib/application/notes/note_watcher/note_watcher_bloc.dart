import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_note_app/domain/notes/note.dart';
import 'package:firebase_ddd_note_app/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_watcher_event.dart';

part 'note_watcher_state.dart';

part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _noteRepository;

  StreamSubscription<Either<NoteFailure, KtList<Note>>>? _notesStreamSubscription;

  NoteWatcherBloc(this._noteRepository) : super(const NoteWatcherState.initial()) {
    on<WatchAllStarted>((event, emit) => _onWatchAllStarted(event, emit));
    on<WatchUncompletedStarted>((event, emit) => _onWatchUncompletedStarted(event, emit));
    on<NotesReceived>((event, emit) => _onNotesReceived(event, emit));
  }

  void _onWatchAllStarted(WatchAllStarted event, Emitter<NoteWatcherState> emit) async {
    emit(const LoadingProgress());
    await _notesStreamSubscription?.cancel();
    _notesStreamSubscription = _noteRepository.watchAll().listen(
          (failureOrNotes) => add(
            NotesReceived(failureOrNotes),
          ),
        );
  }

  void _onWatchUncompletedStarted(WatchUncompletedStarted event, Emitter<NoteWatcherState> emit) async {
    emit(const LoadingProgress());
    await _notesStreamSubscription?.cancel();
    _notesStreamSubscription = _noteRepository.watchUnCompleted().listen(
          (failureOrNotes) => add(
            NotesReceived(failureOrNotes),
          ),
        );
  }

  void _onNotesReceived(NotesReceived event, Emitter<NoteWatcherState> emit) async {
    emit(event.failureOrNotes.fold(
      (f) => LoadingFailure(f),
      (notes) => LoadingSuccess(notes),
    ));
  }

  @override
  Future<void> close() async {
    await _notesStreamSubscription?.cancel();
    return super.close();
  }
}
