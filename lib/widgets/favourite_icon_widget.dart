// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class FavouriteIconWidget extends StatelessWidget {
  const FavouriteIconWidget({
    Key? key,
    required this.product,
    required this.state,
  }) : super(key: key);
  final Product product;
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10.sm,
      left: 10.sm,
      child: GestureDetector(
        onTap: () => state.favoriteStatus(product.id),
        child: CircleAvatar(
          radius: 10.r,
          backgroundColor: Colors.white,
          child: Image.asset(
            product.isFavorite
                ? AssetsIcons.heartFilledPNG
                : AssetsIcons.heartPNG,
            height: 16.sm,
            width: 16.sm,
            color: product.isFavorite ? null : Colors.black,
          ),
        ),
      ),
    );
  }
}
