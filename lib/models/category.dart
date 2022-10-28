import 'package:flutter/material.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class Category {
  const Category({
    required this.color,
    required this.image,
    required this.name,
  });

  final Color color;
  final String image;
  final String name;
}

const categoriesList = [
  Category(
    color: Color(0xFF4AB7B6),
    image: AssetsIcons.cat1PNG,
    name: 'Groceries',
  ),
  Category(
    color: Color(0xFF4B9DCB),
    image: AssetsIcons.cat2PNG,
    name: 'Appliances',
  ),
  Category(
    color: Color(0xD9AF558B),
    image: AssetsIcons.cat3PNG,
    name: 'Fashion',
  ),
  Category(
    color: Color(0xFF4AB7B6),
    image: AssetsIcons.cat1PNG,
    name: 'Groceries',
  ),
  Category(
    color: Color(0xFF4B9DCB),
    image: AssetsIcons.cat2PNG,
    name: 'Appliances',
  ),
  Category(
    color: Color(0xD9AF558B),
    image: AssetsIcons.cat3PNG,
    name: 'Fashion',
  ),
];
