// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/widgets/product_banner.dart';
import 'package:hypermart_flutter/widgets/product_items.dart';

class PopularDealsWidget extends StatelessWidget {
  const PopularDealsWidget({
    Key? key,
    required this.products,
    required this.state,
  }) : super(key: key);
  final List<Product> products;
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          ((context, index) {
            final product = products[index];
            return Container(
              height: 260.sm,
              width: 150.sm,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: const Color(0xFFE8EFF3)),
              ),
              child: product.sale > 0
                  ? ProductBanner(
                      product: product,
                      state: state,
                    )
                  : ProductItems(
                      product: product,
                      state: state,
                    ),
            );
          }),
          childCount: products.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 15.sm / 25.sm,
          crossAxisSpacing: 20.r,
          mainAxisSpacing: 20.r,
        ),
      ),
    );
  }
}
