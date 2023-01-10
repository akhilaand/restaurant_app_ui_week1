import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/presentation/screens/productDetail/widgets/build_product_detail_content.dart';
import 'package:restaurant_app_week1/utils/constants.dart';
import 'package:restaurant_app_week1/utils/styles.dart';

import '../../../../utils/color.dart';
class BuildProductDetailsContainerWidget extends StatelessWidget {
  const BuildProductDetailsContainerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      child: ClipPath(

        clipper: ProductDetailCustomClipper(),
        child: Container(
          height: 370,
          width: size.width,
          color: primaryColor,
          child:const ProductDetailContent(),
        ),
      ),
    );
  }
}

class ProductDetailCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    Path path0 = Path();
    path0.moveTo(0,size.height*0.0020000);
    path0.quadraticBezierTo(0,size.height*0.4512500,0,size.height*0.6010000);
    path0.quadraticBezierTo(size.width*0.0003875,size.height*0.6657600,size.width*0.0640625,size.height*0.7000000);
    path0.quadraticBezierTo(size.width*0.7184375,size.height*0.9250000,size.width*0.9365625,size.height);
    path0.cubicTo(size.width*0.9989875,size.height*1.0005000,size.width*0.9997625,size.height*0.9590000,size.width,size.height*0.9020000);
    path0.cubicTo(size.width*0.9996875,size.height*0.7005000,size.width,size.height*0.3031250,size.width,size.height*0.1035000);
    path0.quadraticBezierTo(size.width*1.0015625,size.height*0.0056200,size.width*0.9375000,size.height*0.0020000);
    path0.lineTo(0,size.height*0.0020000);
    path0.close();

    // path0.lineTo(0, size.height-180);
    // path0.quadraticBezierTo(size.width*0.1246875, size.height*6850000,size.width,size.height);
    // path0.lineTo(size.width, size.height);
    // path0.lineTo(size.width,0);
    // path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}