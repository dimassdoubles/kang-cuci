import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kang_cuci/features/payment/payment.dart';

@singleton
class PaymentMethodCubit extends Cubit<PaymentMethods?> {
  PaymentMethodCubit() : super(null);

  void set(PaymentMethods method) {
    emit(method);
  }
}
