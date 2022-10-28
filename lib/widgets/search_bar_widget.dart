import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 56.sm,
        margin: EdgeInsets.symmetric(horizontal: 16.r),
        padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 08.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: const Color(0xFFEFF1F3),
        ),
        child: Row(children: [
          Image.asset(
            AssetsIcons.searchPNG,
            height: 20.sm,
            width: 20.sm,
          ),
          12.horizontalSpace,
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Anything...',
                hintStyle: GoogleFonts.dmSans(fontSize: 12.sp),
              ),
            ),
          ),
          SizedBox(
            height: 20.r,
            child: const VerticalDivider(
              color: Color(0xFFD8D8D8),
              thickness: 2,
            ),
          ),
          Image.asset(
            AssetsIcons.micPNG,
            // height: 22.r,
            // width: 16.r,
          )
        ]),
      ),
    );
  }
}
