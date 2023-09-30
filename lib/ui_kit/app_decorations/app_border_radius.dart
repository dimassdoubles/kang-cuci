import 'package:flutter/material.dart';

class AppBorderRadius {
  static const double baseSize = 5;

  static const small = BorderRadius.all(Radius.circular(baseSize * 2));
  static const medium = BorderRadius.all(Radius.circular(baseSize * 3));
  static const large = BorderRadius.all(Radius.circular(baseSize * 5));
  static const rounded = BorderRadius.all(Radius.circular(baseSize * 20));
}
