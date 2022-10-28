// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hypermart_flutter/models/product.dart';

class Cart {
  const Cart({
    required this.id,
    required this.products,
    required this.price,
    required this.quantity,
  });

  final String id;
  final List<Product> products;
  final int price;
  final int quantity;

  Cart copyWith({
    String? id,
    List<Product>? products,
    int? price,
    int? quantity,
  }) {
    return Cart(
      id: id ?? this.id,
      products: products ?? this.products,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
