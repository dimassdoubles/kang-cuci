import 'package:kang_cuci/features/product/product.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService;
  ProductBloc({required ProductService productService})
      : _productService = productService,
        super(Initial()) {
    on<GetProductCategories>(
      (event, emit) async {
        emit(Loading());

        final (error, success) = await _productService.getProductCategories();
        if (error != null) {
          emit(Error(error));
        } else {
          emit(Success(productCategories: success!));
        }
      },
    );

    on<GetProducts>(
      (event, emit) async {
        emit(Loading());

        final (error, success) = await _productService.getProducts(
            ctgrProductId: event.ctgrProductId);

        if (error != null) {
          emit(Error(error));
        } else {
          emit(Success(products: success));
        }
      },
    );
  }
}
