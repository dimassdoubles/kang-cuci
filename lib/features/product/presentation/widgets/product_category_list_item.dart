import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCategoryListItem extends StatelessWidget {
  // ignore: unused_field
  final String _id;
  final String _title;
  final String _description;
  final String _imageUrl;
  final void Function()? _onTap;
  const ProductCategoryListItem({
    super.key,
    required String id,
    required String title,
    required String description,
    required String imageUrl,
    void Function()? onTap,
  })  : _id = id,
        _title = title,
        _description = description,
        _imageUrl = imageUrl,
        _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Column(
        children: [
          Gaps.vMedium,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Gaps.vMedium,
                    Text(
                      _description,
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.hLarge,
              ClipRRect(
                borderRadius: AppBorderRadius.small,
                child: Image.network(
                  _imageUrl,
                  fit: BoxFit.cover,
                  width: 0.25.sw,
                  height: 0.25.sw,
                ),
              ),
            ],
          ),
          Gaps.vSmall,
          const Divider(),
        ],
      ),
    );
  }
}
