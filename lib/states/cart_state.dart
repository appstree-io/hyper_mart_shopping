// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:hypermart_flutter/models/cart.dart';
import 'package:hypermart_flutter/models/product.dart';

class CartState {
  Cart cart = const Cart(products: [], id: '1', price: 0, quantity: 4);
  final _cartController = StreamController<Cart>();
  Stream<Cart> get cartStream => _cartController.stream;

  void totolQuantity(List<Product> products) {
    final quantity = products.fold(
        0, (previousValue, element) => element.quantity + previousValue);
    cart = cart.copyWith(quantity: quantity);
    _cartController.add(cart);
  }

  void totolPrice(List<Product> products) {
    final price = products.fold(0, (previousValue, element) {
      return (element.price * element.quantity) + previousValue;
    });
    cart = cart.copyWith(price: price);
    _cartController.add(cart);
  }

  Future<void> dispose() async {
    await _cartController.close();
  }
}
