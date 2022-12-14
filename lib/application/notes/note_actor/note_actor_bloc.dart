import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_note_app/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_note_app/domain/notes/note.dart';
import 'package:firebase_ddd_note_app/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'note_actor_event.dart';

part 'note_actor_state.dart';

part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  final INoteRepository _noteRepository;

  NoteActorBloc(this._noteRepository) : super(const Initial()) {
    on<Deleted>((event, emit) async {
      emit(const ActionInProgress());
      final possibleFailure = await _noteRepository.delete(event.note);
      emit(possibleFailure.fold(
        (f) => DeleteFailure(f),
        (_) => const DeleteSuccess(),
      ));
    });
  }
}
