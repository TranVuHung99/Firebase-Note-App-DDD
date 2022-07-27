import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/core/value_failure.dart';
import 'package:firebase_ddd_note_app/domain/core/value_object.dart';
import 'package:firebase_ddd_note_app/domain/notes/todo_item.dart';
import 'package:firebase_ddd_note_app/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'note.freezed.dart';

@freezed
abstract class Note implements _$Note {
  const Note._();

  const factory Note({
    required UniqueId id,
    required NoteBody body,
    required NoteColor color,
    required List3<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(''),
        color: NoteColor(const Color(0xfffafafa)),
        todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return this
        .id
        .failureOrUnit
        .andThen(body.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              // Getting the failureOption from TodoItem Entity - Not a failureOrUnit from VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (r) => none());
  }
}
