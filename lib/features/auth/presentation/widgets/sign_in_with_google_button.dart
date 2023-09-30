import 'package:kang_cuci/features/auth/auth.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/router/app_router.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInWithGoogleButton extends StatelessWidget {
  SignInWithGoogleButton({
    super.key,
  });

  final AuthBloc _authBloc = getIt.get<AuthBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: (context, state) {
        if (state is Success) {
          context.router.push(const HomeRoute());
        } else if (state is Error) {}
      },
      child: OutlinedButton(
        onPressed: () {
          _authBloc.add(SignInWithGoogle());
        },
        style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: AppBorderRadius.medium,
            ),
            padding: AppPaddings.allMedium,
            foregroundColor: AppColors.primary,
            side: const BorderSide(color: AppColors.primary)),
        child: const Center(
          child: Text(
            "Login dengan google",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
