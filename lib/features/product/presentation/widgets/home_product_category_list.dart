import 'package:kang_cuci/features/product/product.dart';
import 'package:kang_cuci/injections/injections.dart';
import 'package:kang_cuci/router/app_router.dart';
import 'package:kang_cuci/ui_kit/ui_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeProductCategoryList extends StatefulWidget {
  const HomeProductCategoryList({
    super.key,
  });

  @override
  State<HomeProductCategoryList> createState() =>
      _HomeProductCategoryListState();
}

class _HomeProductCategoryListState extends State<HomeProductCategoryList> {
  final _productBloc = getIt.get<ProductBloc>();

  @override
  void initState() {
    super.initState();
    _productBloc.add(GetProductCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.hMedium,
      child: Column(
        children: [
          const HomeProductCategoryListTitle(),
          BlocBuilder<ProductBloc, ProductState>(
            bloc: _productBloc,
            builder: (context, state) {
              if (state is Success) {
                debugPrint("Masuk sini");
                return Column(
                  children: [
                    ...state.productCategories!
                        .map((e) => ProductCategoryListItem(
                              onTap: () {
                                context.router.push(SelectProductRoute(
                                  productCategory: e,
                                ));
                              },
                              code: e.code,
                              id: e.id,
                              title: e.name,
                              description: e.description,
                              imageUrl: e.imageUrl,
                            )),
                    const Gaps(
                      height: 82,
                    ),
                  ],
                );
              } else {
                return const Text("Loading");
              }
            },
          ),
        ],
      ),
    );
  }
}
