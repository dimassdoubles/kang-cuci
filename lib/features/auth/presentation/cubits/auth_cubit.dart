import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kang_cuci/features/auth/auth.dart';

@lazySingleton
class AuthCubit extends Cubit<User?> {
  AuthCubit() : super(null);

  void set(User user) {
    emit(user);
  }
}
