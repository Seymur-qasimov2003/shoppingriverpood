import 'package:flutter/cupertino.dart';

class ProductModel {
  final String name;

  final String image;
  final double price;
  final double rating;
  final bool isFavourite;
  final bool isPopular;
  final String description;
  final String description2;

  ProductModel({
    required this.description,
    required this.description2,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.isFavourite,
    required this.isPopular,
  });
}
