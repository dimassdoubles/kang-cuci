// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/auth/auth.dart' as _i3;
import '../features/auth/data/service_impl/firebase_auth_service.dart' as _i4;
import '../features/auth/presentation/blocs/auth_bloc.dart' as _i8;
import '../features/product/data/service_impl/firebase_service_impl.dart'
    as _i6;
import '../features/product/presentation/blocs/product_bloc.dart' as _i9;
import '../features/product/presentation/cubits/select_product_cubit.dart'
    as _i7;
import '../features/product/product.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthService>(() => _i4.FirebaseAuthService());
    gh.lazySingleton<_i5.ProductService>(() => _i6.FirebaseProductService());
    gh.lazySingleton<_i7.SelectProductCubit>(() => _i7.SelectProductCubit());
    gh.factory<_i8.AuthBloc>(
        () => _i8.AuthBloc(authService: gh<_i3.AuthService>()));
    gh.factory<_i9.ProductBloc>(
        () => _i9.ProductBloc(productService: gh<_i5.ProductService>()));
    return this;
  }
}
