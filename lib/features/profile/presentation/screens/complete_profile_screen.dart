import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kang_cuci/features/profile/profile.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';

@RoutePage()
class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lengkapi profil"),
          foregroundColor: AppColors.neutral900,
          backgroundColor: AppColors.neutral100,
          elevation: 0,
        ),
        body: Padding(
          padding: AppPaddings.hMedium,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Silahkan lengkapi profil anda terlebih dahulu ya kak ~",
                      style: TextStyle(
                        color: AppColors.neutral800,
                      ),
                    ),
                    Gaps.vLarge,
                    Gaps.vLarge,
                    TextFormField(
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Name"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Email"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Nomor HP"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      maxLines: 5,
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Alamat"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: AppPaddings.vMedium,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: AppPaddings.allMedium,
                    backgroundColor: AppColors.primary,
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppBorderRadius.medium,
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    "Simpan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Gaps.vMedium,
            ],
          ),
        ));
  }
}
