import 'package:kang_cuci/commons/commons.dart';
import 'package:kang_cuci/features/auth/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

@LazySingleton(as: AuthService)
class FirebaseAuthService implements AuthService {
  @override
  Future<(AppFailures?, User?)> signInWithGoogle() async {
    try {
      if (kIsWeb) {
        fb.GoogleAuthProvider googleProvider = fb.GoogleAuthProvider();

        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

        final credential =
            await fb.FirebaseAuth.instance.signInWithPopup(googleProvider);

        String? uid;
        String? name;
        String? email;
        String? phone;
        String? address;

        if (credential.user != null) {
          for (final providerProfile in credential.user!.providerData) {
            uid = providerProfile.uid;

            name = name ?? providerProfile.displayName;
            email = email ?? providerProfile.email;
            phone = phone ?? providerProfile.phoneNumber;
            address =
                "uid credential = ${credential.user!.uid}, uid specific provider = ${providerProfile.uid}, id provider = ${providerProfile.providerId}";
          }
        }

        return (
          null,
          User(
            id: uid!,
            name: name,
            email: email,
            phone: phone,
            address: address,
          )
        );
      }
      throw AppException("signInwithGoogle belum tersedia untuk platform Anda");
    } catch (e) {
      return (AppFailures(message: "$e"), null);
    }
  }

  @override
  Future<(AppFailures?, User?)> checkLoggedInUser() async {
    try {
      final currentUser = fb.FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        return (null, UserMapper.fromFirebaseUser(currentUser));
      }
      return (null, null);
    } catch (e) {
      return (AppFailures(message: "$e"), null);
    }
  }
}
