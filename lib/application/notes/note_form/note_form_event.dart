part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Option<Note> initialNoteOption) = Initialized;
  const factory NoteFormEvent.bodyChange(String bodySrt) = BodyChange;
  const factory NoteFormEvent.colorChange(Color color) = ColorChange;
  const factory NoteFormEvent.todosChange(KtList<TodoItemPrimitive> todos) = TodosChange;
  const factory NoteFormEvent.saved() = Saved;

}
