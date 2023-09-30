import 'package:flutter/material.dart';

class AppPaddings {
  static const double baseSize = 4;
  static const smallSize = baseSize;
  static const mediumSize = baseSize * 4;
  static const largeSize = baseSize * 6;

  static const hSmall = EdgeInsets.symmetric(horizontal: smallSize);
  static const hMedium = EdgeInsets.symmetric(horizontal: mediumSize);
  static const hLarge = EdgeInsets.symmetric(horizontal: largeSize);
  static const vSmall = EdgeInsets.symmetric(vertical: smallSize);
  static const vMedium = EdgeInsets.symmetric(vertical: mediumSize);
  static const vLarge = EdgeInsets.symmetric(vertical: largeSize);
  static const allSmall = EdgeInsets.all(smallSize);
  static const allMedium = EdgeInsets.all(mediumSize);
  static const allLarge = EdgeInsets.all(largeSize);
}
