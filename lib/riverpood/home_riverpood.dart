import 'package:app1/model/category_model.dart';
import 'package:app1/model/product_model.dart';
import 'package:flutter/material.dart';

class Home_RiverPood extends ChangeNotifier {
  CategoryModel hotcategory =
      CategoryModel(categoryName: 'Hot Deals', products: [
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 6',
        image: 'assets/images/image1.png',
        price: 100,
        rating: 4.5,
        isFavourite: true,
        isPopular: false),
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 12',
        image: 'assets/images/image2.png',
        price: 1000,
        rating: 4.5,
        isFavourite: false,
        isPopular: false),
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 8',
        image: 'assets/images/image3.png',
        price: 700,
        rating: 4.5,
        isFavourite: false,
        isPopular: false),
  ]);
  CategoryModel mostpopular =
      CategoryModel(categoryName: 'Most Popular', products: [
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 12',
        image: 'assets/images/image4.png',
        price: 1000,
        rating: 4.5,
        isFavourite: true,
        isPopular: false),
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 11',
        image: 'assets/images/image5.png',
        price: 900,
        rating: 5.5,
        isFavourite: false,
        isPopular: false),
    ProductModel(
        description: 'hshdshghchdhc',
        description2: 'hhshshhdhdbhbhbhsbhxshxshhhcdhcdhchchhcuhcuhyhcyhcyhf',
        name: 'Iphone 8',
        image: 'assets/images/image3.png',
        price: 700,
        rating: 4,
        isFavourite: true,
        isPopular: false),
  ]);
}
