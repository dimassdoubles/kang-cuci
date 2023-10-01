import 'package:kang_cuci/features/auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final AuthCubit _authCubit;
  AuthBloc({required AuthService authService, required AuthCubit authCubit})
      : _authService = authService,
        _authCubit = authCubit,
        super(Initial()) {
    on<CheckLoggedInUser>(
      (event, emit) async {
        emit(Loading());

        final (error, user) = await _authService.checkLoggedInUser();
        if (error != null) {
          emit(Error(error));
        } else {
          emit(Success());
          if (user != null) {
            _authCubit.set(user);
          }
        }
      },
    );

    on<SignInWithGoogle>(
      (event, emit) async {
        emit(Loading());

        final (error, user) = await _authService.signInWithGoogle();
        if (error != null) {
          emit(Error(error));
        } else {
          emit(Success());
          _authCubit.set(user!);
        }
      },
    );
  }
}
