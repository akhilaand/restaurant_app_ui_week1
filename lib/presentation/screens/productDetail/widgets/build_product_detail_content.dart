import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/styles.dart';
class ProductDetailContent extends StatelessWidget {
  const ProductDetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding*2,horizontal: appPadding+5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text("Cappuccino",
            style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text("Hot Drink",
            style: secondryTextStyle.copyWith(fontSize: 16,fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width/1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContentDetailContainer(contentName: "Choco",contentPercentage: "15"),
                buildContentDetailContainer(contentName: "Milk",contentPercentage: "70"),
                buildContentDetailContainer(contentName: "Foam",contentPercentage: "25"),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildPriceDetailContainer(price: "8",priceTextColor:black800,priceDetailText:"Price of Drink",priceDetailTextColor: white60),
              buildPriceDetailContainer(price: "16",priceTextColor:white,priceDetailText:"Total Price",priceDetailTextColor: white60 ),
            ],
          )
        ],
      ),
    );
  }

  Container buildPriceDetailContainer({required String price,required Color priceTextColor,
    required String priceDetailText,required Color priceDetailTextColor
  }) {
    return Container(
      decoration: BoxDecoration(
          color:black12WithOpacity2,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: appPadding/3,horizontal: appPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("\$$price",style: secondryTextStyle.copyWith(fontSize: 18,fontWeight: FontWeight.w700,color: priceTextColor),),
            SizedBox(width: 10,),
            Text(priceDetailText,style: secondryTextStyle.copyWith(fontSize: 13,fontWeight: FontWeight.w700,color: priceDetailTextColor),)
          ],
        ),
      ),
    );
  }

  Container buildContentDetailContainer({required String contentPercentage,required String contentName}) {
    return Container(
      decoration:  BoxDecoration(
          border: Border.all(color: grey),
          borderRadius: const BorderRadius.all(Radius.circular(13))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: appPadding-5,vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("$contentPercentage%",
              style: const TextStyle(
                  color: grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w700
              ),
            ),
            Text(contentName,
              style: const TextStyle(
                  color: grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w500

              ),
            ),
          ],
        ),
      ),
    );
  }

}
