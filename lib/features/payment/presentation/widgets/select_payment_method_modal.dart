import 'package:flutter/material.dart';
import 'package:kang_cuci/features/payment/payment.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';

class SelectPaymentMethodModal extends StatelessWidget {
  const SelectPaymentMethodModal({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPaddings.hLarge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vLarge,
            Center(
              child: Container(
                width: 24,
                height: 4,
                decoration: const BoxDecoration(
                  color: AppColors.neutral400,
                  borderRadius: AppBorderRadius.large,
                ),
              ),
            ),
            Gaps.vLarge,
            const Text(
              "Metode pembayaran",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Gaps.vLarge,
            PaymentMethodItem(
              method: PaymentMethods.gopay,
            ),
            PaymentMethodItem(
              method: PaymentMethods.bca,
            ),
            const Gaps(
              height: 68,
            ),
          ],
        ),
      ),
    );
  }
}
