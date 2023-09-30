import 'package:kang_cuci/commons/errors/app_failures.dart';

abstract class AuthService {
  Future<(AppFailures?, bool?)> signInWithGoogle();
}
