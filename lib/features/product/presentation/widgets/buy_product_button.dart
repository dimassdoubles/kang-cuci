import 'package:flutter_svg/flutter_svg.dart';
import 'package:kang_cuci/features/payment/payment.dart' as payment;
import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/router/app_router.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuyProductButton extends StatelessWidget {
  BuyProductButton({
    super.key,
  });

  final SelectProductCubit _selectProductCubit =
      getIt.get<SelectProductCubit>();

  final payment.PaymentMethodCubit _paymentMethodCubit =
      getIt.get<payment.PaymentMethodCubit>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.allLarge,
      child: BlocBuilder<SelectProductCubit, Product?>(
          bloc: _selectProductCubit,
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<payment.PaymentMethodCubit,
                            payment.PaymentMethods?>(
                        bloc: _paymentMethodCubit,
                        builder: (context, state) {
                          if (state != null) {
                            return Text(state.label);
                          }
                          return const Text(
                            "Pilih metode pembayaran",
                            style: TextStyle(
                              color: AppColors.neutral700,
                            ),
                          );
                        }),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: AppBorderRadius.medium,
                          ),
                          builder: (context) {
                            return const payment.SelectPaymentMethodModal();
                          },
                        );
                      },
                      child: SvgPicture.asset(
                        "assets/icons/ic-other.svg",
                        width: 24,
                      ),
                    ),
                  ],
                ),
                Gaps.vLarge,
                ElevatedButton(
                  onPressed: () {
                    if (state != null) {
                      context.router
                          .push(UnimplementedRoute(title: "Pembayaran"));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: state != null
                        ? AppColors.primary
                        : AppColors.neutral600,
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppBorderRadius.rounded,
                    ),
                    padding: AppPaddings.allMedium,
                  ),
                  child: const Center(
                    child: Text(
                      "Beli langganan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
