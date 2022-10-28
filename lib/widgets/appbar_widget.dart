import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      backgroundColor: Colors.white,
      title: Text.rich(
        TextSpan(
          // style: GoogleFonts.poppins(),
          children: [
            TextSpan(
              text: 'Hyper',
              style: TextStyle(
                  color: const Color(0xFFFDAA5D),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: 'Mart',
              style: TextStyle(
                  fontSize: 18.sp,
                  color: const Color(0xFF018768),
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      elevation: 0,
      actions: [
        Row(
          children: [
            Text(
              'Eng',
              style: GoogleFonts.dmSans(
                fontSize: 12.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFF7D8FAB),
            ),
            13.horizontalSpace,
            SizedBox(
              height: 32,
              width: 32,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFE8EFF3),
                child: Image.asset(
                  AssetsIcons.bellPNG,
                  // height: 15.24,
                  // width: 12.95,
                ),
              ),
            ),
            16.horizontalSpace,
          ],
        ),
      ],
    );
  }
}
