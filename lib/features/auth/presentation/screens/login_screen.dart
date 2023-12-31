import 'package:kang_cuci/features/auth/auth.dart';
import 'package:kang_cuci/router/app_router.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.neutral100,
        foregroundColor: AppColors.neutral900,
        elevation: 0,
        title: const Text("Masuk"),
      ),
      body: Padding(
        padding: AppPaddings.hMedium,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: "Nomor HP",
                  focusColor: AppColors.primary,
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: AppColors.primary,
                  ))),
              cursorColor: AppColors.primary,
            ),
            Gaps.vLarge,
            ElevatedButton(
              onPressed: () {
                context.router.push(const CompleteProfileRoute());
              },
              style: ElevatedButton.styleFrom(
                padding: AppPaddings.allMedium,
                shape: const RoundedRectangleBorder(
                  borderRadius: AppBorderRadius.medium,
                ),
                elevation: 0,
                backgroundColor: AppColors.primary,
              ),
              child: const Center(
                  child: Text(
                "Selanjutnya",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
            Gaps.vLarge,
            Gaps.vMedium,
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: AppPaddings.hMedium,
                  child: Text(
                    "Masuk dengan metode lain",
                    style: TextStyle(fontSize: 12, color: AppColors.neutral700),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),
            Gaps.vMedium,
            Gaps.vLarge,
            SignInWithGoogleButton()
          ],
        ),
      ),
    );
  }
}
