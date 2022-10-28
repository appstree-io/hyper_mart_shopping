import 'package:flutter/material.dart';
import 'package:hypermart_flutter/utils/assets.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeArea = MediaQuery.of(context).viewPadding;

    return Container(
      padding: EdgeInsets.only(bottom: safeArea.bottom),
      color: Colors.white,
      height: 63 + safeArea.bottom,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(AssetsIcons.nav1PNG),
          Image.asset(AssetsIcons.nav2PNG),
          Image.asset(
            AssetsIcons.nav2PNG,
            color: Colors.transparent,
          ),
          Image.asset(AssetsIcons.nav3PNG),
          Image.asset(AssetsIcons.nav4PNG),
        ],
      ),
      // child:
    );
  }
}
