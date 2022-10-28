// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/widgets/product_items.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({
    Key? key,
    required this.product,
    required this.state,
  }) : super(key: key);

  final Product product;
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Banner(
        message: '${product.sale}% OFF',
        location: BannerLocation.topEnd,
        color: const Color(0xFFEA7173),
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        child: ProductItems(
          product: product,
          state: state,
        ),
      ),
    );
  }
}
