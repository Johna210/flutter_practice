import 'package:ddd_notes/domain/auth/user.dart' as domain;
import 'package:ddd_notes/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  domain.User toDomain() {
    return domain.User(id: UniqueId.fromUniqueString(uid));
  }
}
