import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentSubscription extends StatelessWidget {
  const CurrentSubscription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: AppPaddings.allMedium,
        width: 1.sw,
        height: 0.5.sw,
        decoration: const BoxDecoration(
          borderRadius: AppBorderRadius.medium,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffD35DCF),
                Color(0xff43C3EC),
              ]),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Paket Regular",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kuota tersisa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "34 Kg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.vLarge,
                    Text(
                      "Sampai 21 September 2023",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Gaps.vLarge,
                  ],
                )
              ],
            )),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: AppBorderRadius.rounded,
                ),
                foregroundColor: Colors.white,
              ),
              child: const Text("Selengkapnya"),
            )
          ],
        ),
      ),
    );
  }
}
