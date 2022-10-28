// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hypermart_flutter/models/cart.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class BottomNavigationBarFloatingButton extends StatelessWidget {
  const BottomNavigationBarFloatingButton({
    Key? key,
    required this.state,
  }) : super(key: key);
  final ProductState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.sm,
      width: 73.sm,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              color: Color(0x30000000),
            )
          ]),
      // height: 40,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color(0xFFFDAA5D),
          shape: BoxShape.circle,
        ),
        child: StreamBuilder<Cart>(
            stream: state.cartState.cartStream,
            initialData: state.cartState.cart,
            builder: (context, snapshot) {
              final cart = snapshot.data!;
              return Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    AssetsIcons.cartPNG,
                    alignment: Alignment.center,
                    height: 22.sm,
                    width: 24.sm,
                  ),
                  cart.quantity > 0
                      ? Positioned(
                          top: 12.sm,
                          right: 12.sm,
                          child: Text(
                            cart.quantity.toString(),
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      : Positioned(
                          top: 16.sm,
                          right: 12.sm,
                          child: Container(
                            height: 14.sm,
                            width: 14.sm,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                ],
              );
            }),
      ),
    );
  }
}
