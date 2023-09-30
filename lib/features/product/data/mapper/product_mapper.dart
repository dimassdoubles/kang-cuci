import 'package:kang_cuci/features/product/product.dart';

class ProductMapper extends Product {
  const ProductMapper(
      {required super.id,
      required super.name,
      required super.price,
      required super.quota});

  factory ProductMapper.fromJson(Map<String, dynamic> json,
      {required String id}) {
    return ProductMapper(
      id: id,
      name: json["name"],
      price: json["price"],
      quota: json["quota"],
    );
  }
}
