import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class CurrentTransaction extends StatelessWidget {
  const CurrentTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.allMedium,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: AppBorderRadius.small,
          border: Border.all(
            width: 1,
            color: Colors.black26,
          ),
        ),
        child: Row(
          children: [
            Image.asset("assets/images/empty.png"),
            Gaps.hLarge,
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saat ini kamu tidak ada pesanan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gaps.vSmall,
                  Text("Ayo tunggu apalagi kak, cuci baju sekarang juga."),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
