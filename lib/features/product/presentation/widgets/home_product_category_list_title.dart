import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';

class HomeProductCategoryListTitle extends StatelessWidget {
  const HomeProductCategoryListTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Paket langganan',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Gaps.vMedium,
      ],
    );
  }
}
