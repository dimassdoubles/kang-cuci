import 'package:kang_cuci/commons/errors/app_failures.dart';
import 'package:kang_cuci/features/auth/auth.dart';

abstract class AuthService {
  Future<(AppFailures?, User?)> signInWithGoogle();
  Future<(AppFailures?, User?)> checkLoggedInUser();
}
