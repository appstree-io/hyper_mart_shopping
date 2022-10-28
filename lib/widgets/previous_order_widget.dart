import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class PreviousOrderWidget extends StatelessWidget {
  const PreviousOrderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 40,
              color: Color(0x1F000000),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(14.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Delivered',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF14AB87),
                      ),
                    ),
                    Text(
                      'On Wed, 27 Jul 2022',
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.r),
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.r, vertical: 11.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0xFFF7F7F7),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(AssetsProducts.avocadoPNG),
                            Image.asset(AssetsProducts.platterPNG),
                            Image.asset(AssetsProducts.saucesPNG),
                            const Text('+5\nMore'),
                          ]),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                'Order ID : # 28292999',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Final Total : \$ 123',
                                style: GoogleFonts.dmSans(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.r,
                                vertical: 10.r,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: const Color(0xFF14AB87)),
                          child: Text(
                            'Order Again',
                            style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                padding: EdgeInsets.all(8.r),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Text(
                  'Order Again & Get Flat 10% OFF',
                  style: GoogleFonts.dmSans(
                    fontSize: 10.3.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
