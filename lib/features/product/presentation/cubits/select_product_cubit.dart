import 'package:kang_cuci/features/product/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SelectProductCubit extends Cubit<Product?> {
  SelectProductCubit() : super(null);

  void set(Product product) {
    emit(product);
  }

  void reset() {
    emit(null);
  }
}
