import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kang_cuci/features/auth/auth.dart' as auth;
import 'package:kang_cuci/features/profile/profile.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';

@RoutePage()
class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final auth.AuthCubit _authCubit = getIt.get<auth.AuthCubit>();
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _phoneCtrl = TextEditingController();
  final TextEditingController _addressCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameCtrl.text = _authCubit.state?.name ?? "";
    _emailCtrl.text = _authCubit.state?.email ?? "";
    _phoneCtrl.text = _authCubit.state?.phone ?? "";
    _addressCtrl.text = _authCubit.state?.address ?? "";
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _phoneCtrl.dispose();
    _addressCtrl.dispose();
    super.dispose();
  }

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
                      controller: _nameCtrl,
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Name"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      controller: _emailCtrl,
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Email"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      controller: _phoneCtrl,
                      decoration: TextFieldConst.inputDecoration
                          .copyWith(labelText: "Nomor HP"),
                    ),
                    Gaps.vLarge,
                    TextFormField(
                      controller: _addressCtrl,
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
