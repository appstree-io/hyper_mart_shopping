import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart_flutter/utils/assets.dart';
import 'package:hypermart_flutter/widgets/top_brands_image_widget.dart';

class TopBrandsWidget extends StatelessWidget {
  const TopBrandsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(left: 16.r),
        height: 50.sm,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            TopBrandsImageWidget(image: AssetsBrands.hollisterPNG),
            TopBrandsImageWidget(image: AssetsBrands.chanelPNG),
            TopBrandsImageWidget(image: AssetsBrands.pradaPNG),
            TopBrandsImageWidget(image: AssetsBrands.hollisterPNG),
            TopBrandsImageWidget(image: AssetsBrands.chanelPNG),
            TopBrandsImageWidget(image: AssetsBrands.pradaPNG),
          ],
        ),
      ),
    );
  }
}
