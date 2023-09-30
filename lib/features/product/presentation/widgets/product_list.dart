import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductList extends StatefulWidget {
  final ProductCategory _productCategory;
  const ProductList({
    super.key,
    required ProductCategory productCategory,
  }) : _productCategory = productCategory;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final ProductBloc _productBloc = getIt.get<ProductBloc>();

  @override
  void initState() {
    super.initState();
    _productBloc.add(GetProducts(ctgrProductId: widget._productCategory.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
        bloc: _productBloc,
        builder: (context, state) {
          if (state is Success) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ...state.products!.map(
                    (e) => ProductListItem(
                      product: e,
                      productCategory: widget._productCategory,
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: Text("Loading ..."),
          );
        });
  }
}
