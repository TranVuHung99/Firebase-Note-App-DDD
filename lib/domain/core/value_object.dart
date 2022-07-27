import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/core/error.dart';
import 'package:firebase_ddd_note_app/domain/core/value_failure.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value($value)';
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String? uniqueId) {
    
    return uniqueId != null ? UniqueId._(
      right(uniqueId),
    ) : UniqueId._(left(const NullId()));
  }

  const UniqueId._(this.value);
}
