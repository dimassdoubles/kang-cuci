import 'package:kang_cuci/router/app_router.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LoginRecomendation extends StatelessWidget {
  const LoginRecomendation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.hMedium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hai, Kak !',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text("Akses semua fitur yuk ~"),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const LoginRoute());
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: AppColors.primary,
            ),
            child: const Text(
              "Masuk",
            ),
          ),
        ],
      ),
    );
  }
}
