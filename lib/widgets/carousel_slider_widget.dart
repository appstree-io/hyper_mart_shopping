import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200.sm,
        width: double.infinity,
        child: CarouselSlider(
          items: [
            Image.asset(AssetsImages.offerPNG),
            Image.asset(AssetsImages.offerPNG),
            Image.asset(AssetsImages.offerPNG),
          ],
          options: CarouselOptions(
            viewportFraction: 0.75.sm,
            enlargeCenterPage: true,
            padEnds: true,
          ),
        ),
      ),
    );
  }
}
