import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/auth/auth_failure.dart';
import 'package:firebase_ddd_note_app/domain/auth/user.dart';
import 'package:firebase_ddd_note_app/domain/auth/value_object.dart';
import 'package:firebase_ddd_note_app/domain/core/value_failure.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedUser();

  Future<Either<AuthFailure, Unit>> registerWithPasswordAndEmail(
      {required EmailAddress emailAddress, required Password password,});

  Future<Either<AuthFailure, Unit>> signInWithPasswordAndEmail(
      {required EmailAddress emailAddress, required Password password,});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}