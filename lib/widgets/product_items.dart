// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/pages/product_detail_page.dart';

import 'package:hypermart_flutter/utils/assets.dart';
import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/widgets/favourite_icon_widget.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    Key? key,
    required this.product,
    required this.state,
  }) : super(key: key);

  final Product product;
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProductDetailPage(
            product: product,
            state: state,
          ),
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: product.id == '1' || product.id == '2'
                      ? Colors.white
                      : const Color(0xFFF2F2F2),
                  child: Image.asset(
                    product.image,
                    height: 140.sm,
                    width: 150.sm,
                    // fit: BoxFit,
                  ),
                ),
                FavouriteIconWidget(
                  product: product,
                  state: state,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              product.name,
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Text(
                  '\$${product.price.toString()}',
                  style: GoogleFonts.dmSans(fontSize: 14.sp),
                ),
                const Spacer(),
                Text(
                  product.rating.toString(),
                  style: GoogleFonts.dmSans(fontSize: 12.sp),
                ),
                8.horizontalSpace,
                Image.asset(
                  AssetsIcons.starFilledPNG,
                  height: 13.19.sm,
                  width: 12.62.sm,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          14.verticalSpace,
          product.quantity > 0
              ? Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuantityControlButton(
                        text: '-',
                        color: const Color(0xFFEA7173),
                        callback: () => state.decreaseQuantity(product.id),
                      ),
                      Text(
                        product.quantity.toString(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF4AB7B6),
                        ),
                      ),
                      QuantityControlButton(
                        text: '+',
                        color: const Color(0xFF4AB7B6),
                        callback: () => state.increaseQuantity(product.id),
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(10.r),
                  child: SizedBox(
                    height: 36.h,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20.r),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFFDAA5D),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () => state.increaseQuantity(product.id),
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFFDAA5D),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

class QuantityControlButton extends StatelessWidget {
  const QuantityControlButton({
    Key? key,
    required this.text,
    required this.color,
    required this.callback,
  }) : super(key: key);
  final String text;
  final Color color;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      width: 36.h,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          padding: EdgeInsets.zero,
          backgroundColor: color,
        ),
        onPressed: callback,
        child: Text(
          text,
          style: GoogleFonts.dmSans(
            fontSize: 24.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
