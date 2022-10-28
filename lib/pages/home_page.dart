import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypermart_flutter/models/product.dart';
import 'package:hypermart_flutter/states/cart_state.dart';
import 'package:hypermart_flutter/states/product_state.dart';
import 'package:hypermart_flutter/widgets/appbar_widget.dart';
import 'package:hypermart_flutter/widgets/bottom_navigation_bar.dart';
import 'package:hypermart_flutter/widgets/bottom_navigation_bar_floating_button.dart';
import 'package:hypermart_flutter/widgets/carousel_slider_widget.dart';
import 'package:hypermart_flutter/widgets/categories_widget.dart';
import 'package:hypermart_flutter/widgets/exclusive_beauty_deals.dart';
import 'package:hypermart_flutter/widgets/popular_deals_widget.dart';
import 'package:hypermart_flutter/widgets/previous_order_widget.dart';
import 'package:hypermart_flutter/widgets/profile_widget.dart';
import 'package:hypermart_flutter/widgets/search_bar_widget.dart';
import 'package:hypermart_flutter/widgets/top_brands_widget.dart';
import 'package:hypermart_flutter/widgets/widget_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productState = ProductState(cartState: CartState());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Product>>(
        stream: productState.productStream,
        initialData: productState.products,
        builder: (context, snapshot) {
          final state = snapshot.data!;
          return Scaffold(
            floatingActionButton: BottomNavigationBarFloatingButton(
              state: productState,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const BottomNavigationBarWidget(),
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                const AppBarWidget(),
                SliverToBoxAdapter(child: 10.verticalSpace),
                const ProfileWidget(),
                SliverToBoxAdapter(child: 20.verticalSpace),
                const SearchBarWidget(),
                const CarouselSliderWidget(),
                // const WidgetHeader(title: 'Categories'),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          'Categories',
                          style: GoogleFonts.dmSans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xFF7D8FAB),
                        ),
                      ],
                    ),
                  ),
                ),
                const CategoriesWidget(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Previous Order',
                      style: GoogleFonts.dmSans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const PreviousOrderWidget(),
                const WidgetHeader(title: 'Popular Deals'),
                PopularDealsWidget(
                  state: productState,
                  products: snapshot.data!,
                ),
                const WidgetHeader(title: 'Top Brands'),
                const TopBrandsWidget(),
                const WidgetHeader(title: 'Exclusive Beauty Deals'),
                const ExclusiveBeautyDeals(),
                SliverToBoxAdapter(child: 30.verticalSpace)
              ],
            ),
          );
        });
  }
}
