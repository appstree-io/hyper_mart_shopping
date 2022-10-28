// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/utils/assets.dart';
import 'package:hypermart_flutter/widgets/product_items.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
    required this.product,
    required this.state,
  }) : super(key: key);
  final Product product;
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: StreamBuilder<List<Product>>(
          stream: state.productStream,
          initialData: state.products,
          builder: (context, snapshot) {
            // if (snapshot.connectionState == ConnectionState.active) {
            // ignore: no_leading_underscores_for_local_identifiers
            final _product = snapshot.data!.firstWhere(
              (element) => element.id == product.id,
            );
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  color: product.id == '1' || product.id == '2'
                      ? Colors.white
                      : const Color(0xFFF2F2F2),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text('by AK Mart'),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
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
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere dui. In hac habitasse platea dictumst. Morbi vitae tincidunt leo. Etiam id libero at turpis mollis posuere consectetur.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        '\$${product.price.toString()}',
                        style: GoogleFonts.dmSans(fontSize: 20.sp),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: _product.quantity > 0
                          ? Padding(
                              padding: EdgeInsets.all(10.r),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  QuantityControlButton(
                                    text: '-',
                                    color: const Color(0xFFEA7173),
                                    callback: () =>
                                        state.decreaseQuantity(product.id),
                                  ),
                                  Text(
                                    _product.quantity.toString(),
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF4AB7B6),
                                    ),
                                  ),
                                  QuantityControlButton(
                                    text: '+',
                                    color: const Color(0xFF4AB7B6),
                                    callback: () =>
                                        state.increaseQuantity(product.id),
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.r),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: Color(0xFFFDAA5D),
                                      ),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  onPressed: () =>
                                      state.increaseQuantity(product.id),
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
                    ),
                  ],
                )
              ],
            );
            // }

            // return const Center(
            //   child: CircularProgressIndicator(),
            // );
          }),
    );
  }
}
