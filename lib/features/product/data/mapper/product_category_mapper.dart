import 'package:kang_cuci/features/product/product.dart';

class ProductCategoryMapper extends ProductCategory {
  const ProductCategoryMapper({
    required super.id,
    required super.name,
    required super.description,
    required super.duration,
    required super.imageUrl,
  });

  factory ProductCategoryMapper.fromJson(Map<String, dynamic> json,
      {required String id}) {
    return ProductCategoryMapper(
        id: id,
        name: json["name"],
        description: json["description"],
        duration: json["duration"],
        imageUrl: json["imageUrl"]);
  }
}
