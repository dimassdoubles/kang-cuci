import 'package:kang_cuci/commons/errors/app_failures.dart';
import 'package:kang_cuci/features/product/product.dart';

abstract class ProductService {
  Future<(AppFailures?, List<ProductCategory>?)> getProductCategories();
  Future<(AppFailures?, List<Product>?)> getProducts(
      {required String subCtgrCode});
}
