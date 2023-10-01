import 'package:kang_cuci/features/auth/auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

class UserMapper extends User {
  const UserMapper({
    required super.id,
    super.name,
    super.email,
    super.phone,
    super.address,
  });

  factory UserMapper.fromFirebaseUser(fb.User firebaseUser, {String? address}) {
    return UserMapper(
      id: firebaseUser.uid,
      name: firebaseUser.displayName,
      email: firebaseUser.email,
      phone: firebaseUser.phoneNumber,
      address: address,
    );
  }
}
