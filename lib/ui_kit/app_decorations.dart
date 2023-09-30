import 'package:flutter/material.dart';

class AppDecorations {
  AppDecorations._();

  static const double baseSize = 4;

  static const borderRadiusSmall = BorderRadius.all(Radius.circular(baseSize));
  static const paddingHSmall = EdgeInsets.symmetric(horizontal: baseSize);
  static const paddingAllSmall = EdgeInsets.symmetric(horizontal: baseSize);
  static const paddingAllMedium = EdgeInsets.all(baseSize * 4);
  static const paddingAllLarge = EdgeInsets.symmetric(horizontal: baseSize * 2);
}
