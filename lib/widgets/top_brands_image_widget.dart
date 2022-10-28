import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBrandsImageWidget extends StatelessWidget {
  const TopBrandsImageWidget({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.r),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
        height: 47.92,
        width: 95.84,
      ),
    );
  }
}
