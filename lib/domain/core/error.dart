import 'package:firebase_ddd_note_app/domain/core/value_failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encounter a ValueFailure at an unrecoverable point. Terminating.';

    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}