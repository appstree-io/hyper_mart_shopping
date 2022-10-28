import 'package:hypermart_flutter/utils/assets.dart';

class Brands {
  const Brands({
    required this.image,
    this.off = 0,
  });

  final String image;
  final int off;
}

const exclusiveBeautyDeals = [
  Brands(image: AssetsBrands.revlonPNG, off: 10),
  Brands(image: AssetsBrands.lakmePNG, off: 20),
  Brands(image: AssetsBrands.garnierPNG, off: 15),
  Brands(image: AssetsBrands.maybellinePNG, off: 5),
  Brands(image: AssetsBrands.cliniquePNG, off: 5),
  Brands(image: AssetsBrands.sugarPNG, off: 60),
];
