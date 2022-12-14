import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ddd_note_app/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_note_app/domain/core/error.dart';
import 'package:firebase_ddd_note_app/injection.dart';

extension FireStoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}