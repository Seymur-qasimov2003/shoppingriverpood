import 'package:app1/model/product_model.dart';

class CategoryModel {
  String categoryName;
  List<ProductModel> products;
  CategoryModel({required this.categoryName, required this.products});
}
