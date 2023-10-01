import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kang_cuci/features/auth/auth.dart' as auth;
import 'package:kang_cuci/features/home/home.dart';
import 'package:kang_cuci/features/product/product.dart' as product;
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final auth.AuthBloc _authBloc = getIt.get<auth.AuthBloc>();
  final auth.AuthCubit _authCubit = getIt.get<auth.AuthCubit>();

  @override
  void initState() {
    super.initState();
    _authBloc.add(auth.CheckLoggedInUser());
  }

  @override
  Widget build(BuildContext context) {
    final service = product.FirebaseProductService();
    service.getProductCategories();
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: EdgeInsets.only(top: AppPaddings.mediumSize),
          child: HomeAppbar(),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          SizedBox(
            height: 1.sh,
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppPaddings.mediumSize,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<auth.AuthCubit, auth.User?>(
                        bloc: _authCubit,
                        builder: (context, state) {
                          if (state == null) {
                            return const LoginRecomendation();
                          }
                          return const SizedBox.shrink();
                        }),
                    Gaps.vLarge,
                    const CurrentSubscription(),
                    Gaps.vMedium,
                    const CurrentTransaction(),
                    Gaps.vLarge,
                    const product.HomeProductCategoryList(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPaddings.mediumSize,
              vertical: AppPaddings.largeSize,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(1.sw, 0),
                padding: AppPaddings.allMedium,
                shape: const RoundedRectangleBorder(
                  borderRadius: AppBorderRadius.rounded,
                ),
                backgroundColor: AppColors.primary,
              ),
              child: const Text(
                "Cuci sekarang",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
