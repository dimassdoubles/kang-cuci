import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String? name;
  final String? email;
  final String? phone;
  final String? address;
  const User({
    required this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
  });

  @override
  List<Object?> get props => [id, name, email, phone, address];
}
