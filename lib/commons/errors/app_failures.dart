import 'package:equatable/equatable.dart';

class AppFailures extends Equatable {
  final String message;
  const AppFailures({required this.message});

  @override
  List<Object?> get props => [message];
}
