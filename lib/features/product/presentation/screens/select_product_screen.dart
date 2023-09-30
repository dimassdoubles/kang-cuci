import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectProductScreen extends StatefulWidget {
  final ProductCategory _productCategory;
  const SelectProductScreen({
    super.key,
    required ProductCategory productCategory,
  }) : _productCategory = productCategory;

  @override
  State<SelectProductScreen> createState() => _SelectProductScreenState();
}

class _SelectProductScreenState extends State<SelectProductScreen> {
  final _selectProductCubit = getIt.get<SelectProductCubit>();

  @override
  void initState() {
    super.initState();
    _selectProductCubit.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        title: Text(widget._productCategory.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: ProductList(
              productCategory: widget._productCategory,
            ),
          ),
          BuyProductButton()
        ],
      ),
    );
  }
}
