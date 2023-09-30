// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    SelectProductRoute.name: (routeData) {
      final args = routeData.argsAs<SelectProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectProductScreen(
          key: args.key,
          productCategory: args.productCategory,
        ),
      );
    },
    UnimplementedRoute.name: (routeData) {
      final args = routeData.argsAs<UnimplementedRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UnimplementedScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectProductScreen]
class SelectProductRoute extends PageRouteInfo<SelectProductRouteArgs> {
  SelectProductRoute({
    Key? key,
    required ProductCategory productCategory,
    List<PageRouteInfo>? children,
  }) : super(
          SelectProductRoute.name,
          args: SelectProductRouteArgs(
            key: key,
            productCategory: productCategory,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectProductRoute';

  static const PageInfo<SelectProductRouteArgs> page =
      PageInfo<SelectProductRouteArgs>(name);
}

class SelectProductRouteArgs {
  const SelectProductRouteArgs({
    this.key,
    required this.productCategory,
  });

  final Key? key;

  final ProductCategory productCategory;

  @override
  String toString() {
    return 'SelectProductRouteArgs{key: $key, productCategory: $productCategory}';
  }
}

/// generated route for
/// [UnimplementedScreen]
class UnimplementedRoute extends PageRouteInfo<UnimplementedRouteArgs> {
  UnimplementedRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          UnimplementedRoute.name,
          args: UnimplementedRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'UnimplementedRoute';

  static const PageInfo<UnimplementedRouteArgs> page =
      PageInfo<UnimplementedRouteArgs>(name);
}

class UnimplementedRouteArgs {
  const UnimplementedRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'UnimplementedRouteArgs{key: $key, title: $title}';
  }
}
