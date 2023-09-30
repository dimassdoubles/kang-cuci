import 'package:kang_cuci/commons/errors/app_failures.dart';
import 'package:kang_cuci/features/product/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductService)
class FirebaseProductService implements ProductService {
  @override
  Future<(AppFailures?, List<ProductCategory>?)> getProductCategories() async {
    try {
      final ctgrProductRef =
          FirebaseFirestore.instance.collection("productCategories");

      List<ProductCategory> result = [];

      final snapshot = await ctgrProductRef.get();

      for (var doc in snapshot.docs) {
        result.add(ProductCategoryMapper.fromJson(id: doc.id, doc.data()));
        debugPrint(result.first.description);
      }
      return (null, result);
    } catch (e) {
      return (const AppFailures(message: "Gagal getProductCategories"), null);
    }
  }

  @override
  Future<(AppFailures?, List<Product>?)> getProducts(
      {required String ctgrProductId}) async {
    try {
      final productRef =
          FirebaseFirestore.instance.collection("products").where(
                "ctgrId",
                isEqualTo: ctgrProductId,
              );

      List<Product> result = [];
      final snapshot = await productRef.get();

      for (var doc in snapshot.docs) {
        result.add(ProductMapper.fromJson(id: doc.id, doc.data()));
      }

      return (null, result);
    } catch (e) {
      return (const AppFailures(message: "Gagal getProducts"), null);
    }
  }
}
