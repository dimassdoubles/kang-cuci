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

import '../features/auth/auth.dart' as _i4;
import '../features/auth/data/service_impl/firebase_auth_service.dart' as _i5;
import '../features/auth/presentation/blocs/auth_bloc.dart' as _i10;
import '../features/auth/presentation/cubits/auth_cubit.dart' as _i3;
import '../features/payment/presentation/cubits/payment_method_cubit.dart'
    as _i6;
import '../features/product/data/service_impl/firebase_service_impl.dart'
    as _i8;
import '../features/product/presentation/blocs/product_bloc.dart' as _i11;
import '../features/product/presentation/cubits/select_product_cubit.dart'
    as _i9;
import '../features/product/product.dart' as _i7;

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
    gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.AuthService>(() => _i5.FirebaseAuthService());
    gh.singleton<_i6.PaymentMethodCubit>(_i6.PaymentMethodCubit());
    gh.lazySingleton<_i7.ProductService>(() => _i8.FirebaseProductService());
    gh.lazySingleton<_i9.SelectProductCubit>(() => _i9.SelectProductCubit());
    gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(
          authService: gh<_i4.AuthService>(),
          authCubit: gh<_i4.AuthCubit>(),
        ));
    gh.factory<_i11.ProductBloc>(
        () => _i11.ProductBloc(productService: gh<_i7.ProductService>()));
    return this;
  }
}
