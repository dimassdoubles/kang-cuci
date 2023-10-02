import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kang_cuci/features/payment/payment.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethods _method;
  PaymentMethodItem({
    super.key,
    required PaymentMethods method,
  }) : _method = method;

  final PaymentMethodCubit _paymentMethodCubit =
      getIt.get<PaymentMethodCubit>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _paymentMethodCubit.set(_method);
        Navigator.pop(context);
      },
      child: Column(
        children: [
          Gaps.vMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    _method.iconPath,
                    width: 32,
                  ),
                  Gaps.hMedium,
                  Text(
                    _method.label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Radio(
                value: _method.code,
                groupValue: _paymentMethodCubit.state?.code,
                onChanged: (value) {},
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
