import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/core/value_failure.dart';
import 'package:firebase_ddd_note_app/domain/core/value_object.dart';
import 'package:firebase_ddd_note_app/domain/core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
