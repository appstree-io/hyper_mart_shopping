// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:hypermart_flutter/models/cart.dart';
import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/cart_state.dart';

class ProductState {
  final CartState cartState;
  ProductState({
    required this.cartState,
  });
  List<Product> products = [...productsList];

  final _productsController = StreamController<List<Product>>.broadcast();
  Stream<List<Product>> get productStream => _productsController.stream;

  void increaseQuantity(String id) {
    products = products.map((product) {
      if (product.id == id) {
        return product.copyWith(quantity: product.quantity + 1);
      }
      return product;
    }).toList();
    cartState.totolQuantity(products);
    cartState.totolPrice(products);
    _productsController.add(products);
  }

  void decreaseQuantity(String id) {
    products = products.map((product) {
      if (product.id == id) {
        return product.copyWith(quantity: product.quantity - 1);
      }
      return product;
    }).toList();
    cartState.totolQuantity(products);
    cartState.totolPrice(products);
    _productsController.add(products);
  }

  void favoriteStatus(String id) {
    products = products.map((product) {
      if (product.id == id) {
        return product.copyWith(isFavorite: !product.isFavorite);
      }
      return product;
    }).toList();
    _productsController.add(products);
  }

  Future<void> dispose() async {
    await _productsController.close();
  }
}
