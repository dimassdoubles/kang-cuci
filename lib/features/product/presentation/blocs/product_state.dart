import 'package:kang_cuci/commons/commons.dart';
import 'package:kang_cuci/features/product/product.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {}

class Success extends ProductState {
  final List<ProductCategory>? productCategories;
  final List<Product>? products;

  Success({this.productCategories, this.products});

  @override
  List<Object?> get props => [
        productCategories,
        products,
      ];
}

class Initial extends ProductState {
  @override
  List<Object?> get props => [];
}

class Loading extends ProductState {
  @override
  List<Object?> get props => [];
}

class Error extends ProductState {
  final AppFailures failure;
  Error(this.failure);
  @override
  List<Object?> get props => [failure];
}
