import 'package:kang_cuci/commons/errors/app_failures.dart';
import 'package:kang_cuci/features/auth/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart';

@LazySingleton(as: AuthService)
class FirebaseAuthService implements AuthService {
  @override
  Future<(AppFailures?, bool?)> signInWithGoogle() async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();

        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

        await FirebaseAuth.instance.signInWithPopup(googleProvider);
      }
      return (null, true);
    } catch (e) {
      return (AppFailures(message: "$e"), null);
    }
  }
}
