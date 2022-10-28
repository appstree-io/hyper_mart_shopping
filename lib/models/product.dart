import 'package:hypermart_flutter/utils/assets.dart';

class Product {
  const Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.sale,
    this.isFavorite = false,
    this.quantity = 0,
  });

  final String id;
  final String name;
  final String image;
  final int price;
  final double rating;
  final bool isFavorite;
  final int sale;
  final int quantity;

  Product copyWith({
    String? id,
    String? name,
    String? image,
    int? price,
    double? rating,
    bool? isFavorite,
    int? sale,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      isFavorite: isFavorite ?? this.isFavorite,
      sale: sale ?? this.sale,
      quantity: quantity ?? this.quantity,
    );
  }
}

const productsList = [
  Product(
    id: '1',
    name: 'Strawberries',
    image: AssetsProducts.strawberriesPNG,
    price: 10,
    rating: 4.8,
    isFavorite: false,
    sale: 5,
    quantity: 2,
  ),
  Product(
    id: '2',
    name: 'Fried Chips',
    image: AssetsProducts.chipsPNG,
    price: 12,
    rating: 4.8,
    isFavorite: false,
    sale: 0,
  ),
  Product(
    id: '3',
    name: 'Moder Chair',
    image: AssetsProducts.madorChairPNG,
    price: 3599,
    rating: 4.8,
    isFavorite: false,
    sale: 0,
  ),
  Product(
    id: '4',
    name: 'LG washing machine',
    image: AssetsProducts.lgWashingMachinePNG,
    price: 45999,
    rating: 4.8,
    isFavorite: false,
    sale: 0,
    quantity: 2,
  ),
];
