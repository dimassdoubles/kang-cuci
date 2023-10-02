import 'package:equatable/equatable.dart';

class ProductCategory extends Equatable {
  final String id;
  final String code;
  final String name;
  final String description;
  final int duration;
  final String imageUrl;

  const ProductCategory({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.duration,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [code, id, name, description, duration];
}
