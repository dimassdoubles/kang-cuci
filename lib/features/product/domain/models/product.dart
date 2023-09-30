import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String id;
  final String name;
  final int price;
  final int quota;

  const Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.quota});

  @override
  List<Object?> get props => [id, name, price, quota];
}
