import 'package:flutter/material.dart';

class Product {
  late final String title, description;
  late final List<String> images;
  late final List<Color> colors;
  late final double rating, price;
  late final bool isFavourite, isPopular;

  Product({
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}
