import 'package:kang_cuci/features/auth/auth.dart';
import 'package:kang_cuci/features/home/home.dart';
import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/features/unimplemented_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SelectProductRoute.page),
        AutoRoute(page: UnimplementedRoute.page),
      ];
}
