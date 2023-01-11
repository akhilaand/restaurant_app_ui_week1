import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/presentation/screens/homeScreen/widgets/build_product_container.dart';
import 'package:restaurant_app_week1/presentation/screens/homeScreen/widgets/custom_appbar.dart';
import 'package:restaurant_app_week1/presentation/screens/homeScreen/widgets/custom_tab_bar.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/product_detail_screen.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_product_detail_content.dart';
import 'package:restaurant_app_week1/utils/color.dart';
import 'package:restaurant_app_week1/utils/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        size: size,
      ),
      body: ListView(
        children: [
          const CustomAppbar(),
          CustomTabBar(),
          InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
                );
              },
              child: const BuildProductContainer())
        ],
      ),
    );
  }
}

