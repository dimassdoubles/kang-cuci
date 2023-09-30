import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductListItem extends StatelessWidget {
  final Product _product;
  final ProductCategory _productCategory;
  ProductListItem({
    super.key,
    required Product product,
    required ProductCategory productCategory,
  })  : _product = product,
        _productCategory = productCategory;

  final SelectProductCubit _selectProductCubit =
      getIt.get<SelectProductCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectProductCubit, Product?>(
        bloc: _selectProductCubit,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(
              right: AppPaddings.mediumSize,
              left: AppPaddings.mediumSize,
              bottom: AppPaddings.mediumSize,
            ),
            child: InkWell(
              onTap: () {
                _selectProductCubit.set(_product);
              },
              borderRadius: AppBorderRadius.medium,
              child: Container(
                padding: AppPaddings.allLarge,
                decoration: BoxDecoration(
                  borderRadius: AppBorderRadius.medium,
                  border: Border.all(
                    color: state == _product
                        ? AppColors.primary
                        : AppColors.neutral200,
                    width: 1.5,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/ic-target.svg",
                              colorFilter: const ColorFilter.mode(
                                  AppColors.primary, BlendMode.srcIn),
                              width: 24,
                            ),
                            Gaps.hMedium,
                            Text(
                              _product.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "${_productCategory.duration} Day",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                      ],
                    ),
                    Gaps.vLarge,
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "IDR ${_product.price}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
