import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ddd_note_app/domain/auth/user.dart';
import 'package:firebase_ddd_note_app/domain/core/value_object.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(id: UniqueId.fromUniqueString(uid));
  }
}