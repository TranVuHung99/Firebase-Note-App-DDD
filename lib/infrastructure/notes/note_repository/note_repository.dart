import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ddd_note_app/domain/notes/i_note_repository.dart';
import 'package:firebase_ddd_note_app/domain/notes/note.dart';
import 'package:firebase_ddd_note_app/domain/notes/note_failure.dart';
import 'package:firebase_ddd_note_app/infrastructure/core/firestore_hepler.dart';
import 'package:firebase_ddd_note_app/infrastructure/notes/note_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _fireStore;

  NoteRepository(this._fireStore);

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _fireStore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<NoteFailure, KtList<Note>>(
            snapshot.docs.map((doc) => NoteDto.fromFireStore(doc).toDomain()).toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, trace) {
      if (e is FirebaseAuthException && (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUnCompleted() async* {
    final userDoc = await _fireStore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map((doc) => NoteDto.fromFireStore(doc).toDomain()),
        )
        .map(
          (notes) => right<NoteFailure, KtList<Note>>(
            notes
                .where(
                  (note) => note.todos.getOrCrash().any((todoItem) => !todoItem.done),
                )
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, trace) {
      if (e is FirebaseAuthException && (e.message?.contains('PERMISSION_DENIED') ?? false)) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _fireStore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return left(const NoteFailure.insufficientPermission());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _fireStore.userDocument();
      final noteDto = NoteDto.fromDomain(note);

      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message?.contains('NOT_FOUND') ?? false) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _fireStore.userDocument();
      final noteId = note.id.getOrCrash();

      await userDoc.noteCollection.doc(noteId).delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.message?.contains('PERMISSION_DENIED') ?? false) {
        return left(const NoteFailure.insufficientPermission());
      } else if (e.message?.contains('NOT_FOUND') ?? false) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
