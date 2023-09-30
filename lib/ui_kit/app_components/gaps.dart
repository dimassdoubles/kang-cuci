import 'package:flutter/material.dart';

class Gaps extends StatelessWidget {
  final double? _height;
  final double? _width;
  const Gaps({super.key, double? height, double? width})
      : _height = height,
        _width = width;

  static const double baseSize = 4;

  static const vSmall = SizedBox(height: baseSize);
  static const vMedium = SizedBox(height: baseSize * 2);
  static const vLarge = SizedBox(height: baseSize * 4);

  static const hSmall = SizedBox(width: baseSize);
  static const hMedium = SizedBox(width: baseSize * 2);
  static const hLarge = SizedBox(width: baseSize * 4);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
    );
  }
}
