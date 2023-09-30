abstract class ProductEvent {}

class GetProductCategories extends ProductEvent {
  final String keyword;
  GetProductCategories({this.keyword = ""});
}

class GetProducts extends ProductEvent {
  final String ctgrProductId;
  GetProducts({required this.ctgrProductId});
}
