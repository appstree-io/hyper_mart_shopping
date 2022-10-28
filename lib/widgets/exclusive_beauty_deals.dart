import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/models/brand.dart';

class ExclusiveBeautyDeals extends StatelessWidget {
  const ExclusiveBeautyDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          ((context, index) {
            final brand = exclusiveBeautyDeals[index];
            return Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 70.w,
                    width: 96.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0x66EAEAEA),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(brand.image),
                        06.verticalSpace,
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 52.w,
                    width: 52.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(12.r),
                      color: Color(0xFF4AB7B6),
                    ),
                    child: Text(
                      'Upto\n${brand.off}% OFF',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
          childCount: exclusiveBeautyDeals.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // childAspectRatio: 9.r / 9.r,
          crossAxisSpacing: 15.r,
          mainAxisSpacing: 20.r,
        ),
      ),
    );
  }
}
