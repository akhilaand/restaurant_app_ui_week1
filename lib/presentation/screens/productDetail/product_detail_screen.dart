import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_product_detail_container_widget.dart';
import 'package:restaurant_app_week1/utils/color.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:black,
      body:  SizedBox(
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
                height: 400,
                width: size.width,
                child: Image.asset("assets/images/cofee.jpg",fit: BoxFit.cover,)),
            BuildProductDetailsContainerWidget(size: size)
          ],
        ),
      ),
    );
  }
}








