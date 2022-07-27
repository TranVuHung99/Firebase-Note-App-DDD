part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherState with _$NoteWatcherState {
  const factory NoteWatcherState.initial() = Initial;
  const factory NoteWatcherState.loadingProgress() = LoadingProgress;
  const factory NoteWatcherState.loadingSuccess(KtList<Note> notes) = LoadingSuccess;
  const factory NoteWatcherState.loadingFailure(NoteFailure noteFailure) = LoadingFailure;
}

