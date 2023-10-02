import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';

class PaymentMethodItem extends StatelessWidget {
  final String _iconPath;
  final String _label;
  final String _value;
  final String? _currentSelectedValue;
  final void Function()? _onSelected;
  const PaymentMethodItem({
    super.key,
    required String iconPath,
    required String label,
    required void Function()? onSelected,
    required String value,
    required String? currentSelectedvalue,
  })  : _iconPath = iconPath,
        _label = label,
        _onSelected = onSelected,
        _value = value,
        _currentSelectedValue = currentSelectedvalue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onSelected,
      child: Column(
        children: [
          Gaps.vMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    _iconPath,
                    width: 32,
                  ),
                  Gaps.hMedium,
                  Text(
                    _label,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Radio(
                value: _value,
                groupValue: _currentSelectedValue,
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
