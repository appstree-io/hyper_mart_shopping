import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          16.horizontalSpace,
          SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              backgroundColor: const Color(0xFF4AB7B6),
              child: Image.asset(AssetsIcons.pinPNG),
            ),
          ),
          10.horizontalSpace,
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bengaluru',
                style: GoogleFonts.dmSans(fontSize: 10.sp),
              ),
              Text(
                'BTM Layout, 500628',
                style: GoogleFonts.dmSans(fontSize: 12.sp),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Color(0xFF37474F),
          ),
          16.horizontalSpace,
        ],
      ),
    );
  }
}
