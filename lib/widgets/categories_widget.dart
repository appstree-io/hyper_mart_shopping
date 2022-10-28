import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/models/category.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 16.r),
        height: 100.sm,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoriesList
              .map(
                (category) => Container(
                  margin: EdgeInsets.only(
                    right: 16.r,
                  ),
                  height: 90.sm,
                  width: 96.sm,
                  decoration: BoxDecoration(
                    color: category.color,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(category.image),
                      08.verticalSpace,
                      Text(
                        category.name,
                        style: GoogleFonts.dmSans(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
