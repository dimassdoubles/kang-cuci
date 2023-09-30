import 'package:kang_cuci/commons/commons.dart';
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

class Success extends AuthState {
  Success();

  @override
  List<Object?> get props => [];
}

class Initial extends AuthState {
  @override
  List<Object?> get props => [];
}

class Loading extends AuthState {
  @override
  List<Object?> get props => [];
}

class Error extends AuthState {
  final AppFailures failure;
  Error(this.failure);
  @override
  List<Object?> get props => [failure];
}
