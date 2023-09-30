import 'package:kang_cuci/features/auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  AuthBloc({required AuthService authService})
      : _authService = authService,
        super(Initial()) {
    on<SignInWithGoogle>(
      (event, emit) async {
        emit(Loading());

        final (error, _) = await _authService.signInWithGoogle();
        if (error != null) {
          emit(Error(error));
        } else {
          emit(Success());
        }
      },
    );
  }
}
