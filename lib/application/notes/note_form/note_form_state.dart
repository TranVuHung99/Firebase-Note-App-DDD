part of 'note_form_bloc.dart';

@freezed
class NoteFormState with _$NoteFormState {
  const factory NoteFormState({
    required Note note,
    required bool isSaving,
    required bool isEditing,
    required bool showErrorMessage,
    required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption,
  }) = _NoteFormState;

  factory NoteFormState.initial() => NoteFormState(
        note: Note.empty(),
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccessOption: none(),
        showErrorMessage: false,
      );
}
