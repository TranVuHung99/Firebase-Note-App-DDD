import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_note_app/domain/notes/note.dart';
import 'package:firebase_ddd_note_app/domain/notes/note_failure.dart';
import 'package:firebase_ddd_note_app/domain/notes/value_objects.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'note_form_event.dart';

part 'note_form_state.dart';

part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(NoteFormState.initial()) {
    on<Initialized>((event, emit) => _onInitialized(event, emit));
    on<BodyChange>((event, emit) => _onBodyChange(event, emit));
    on<ColorChange>((event, emit) => _onColorChange(event, emit));
    on<TodosChange>((event, emit) => _onTodoChange(event, emit));
    on<Saved>((event, emit) => _onSaved(event, emit));
  }

  void _onInitialized(Initialized event, Emitter<NoteFormState> emit) {
    emit(event.initialNoteOption.fold(
      () => state,
      (initialNote) => state.copyWith(
        note: initialNote,
        isEditing: true,
      ),
    ));
  }

  void _onBodyChange(BodyChange event, Emitter<NoteFormState> emit) {
    emit(state.copyWith(
      note: state.note.copyWith(body: NoteBody(event.bodySrt)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onColorChange(ColorChange event, Emitter<NoteFormState> emit) {
    emit(state.copyWith(
      note: state.note.copyWith(color: NoteColor(event.color)),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onTodoChange(TodosChange event, Emitter<NoteFormState> emit) {
    emit(state.copyWith(
      note: state.note.copyWith(
        todos: List3(
          event.todos.map((primitive) => primitive.toDomain()),
        ),
      ),
      saveFailureOrSuccessOption: none(),
    ));
  }

  void _onSaved(Saved event, Emitter<NoteFormState> emit) async {
    Either<NoteFailure, Unit>? failureOfSuccess;
    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    if (state.note.failureOption.isNone()) {
      failureOfSuccess = state.isEditing
          ? await _noteRepository.update(state.note)
          : await _noteRepository.create(state.note);
    }

    emit(state.copyWith(
      isSaving: false,
      showErrorMessage: true,
      saveFailureOrSuccessOption: optionOf(failureOfSuccess),
    ));
  }
}
