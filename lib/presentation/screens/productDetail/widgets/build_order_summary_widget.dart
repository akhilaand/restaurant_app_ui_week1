import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/utils/color.dart';

import '../../../../utils/constants.dart';
class BuildOrderSummaryWidget extends StatelessWidget {
  const BuildOrderSummaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Positioned(
      bottom: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: appPadding),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text("Total Order",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width:size.width/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildNumberDrinksWIdget(),
                 buildTotalPriceWidget(),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  Column buildNumberDrinksWIdget() {
    return Column(
                  children: [
                    Image.asset("assets/images/drink.png",color: grey,width: 40,),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("No of Drinks",style: TextStyle(fontSize: 15,color: grey),)
                  ],
                );
  }

  Column buildTotalPriceWidget() {
    return Column(
                 children: [
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: const [
                       Padding(
                         padding: EdgeInsets.only(top: 8.0),
                         child: Text('\$',style: TextStyle(fontSize: 14),),
                       ),
                       SizedBox(
                         width: 1,
                       ),
                       Text("32",style: TextStyle(fontWeight: FontWeight.w600),),
                     ],
                   ),
                   const SizedBox(
                     height: 5,
                   ),
                   Text("Total Price",style: TextStyle(fontSize: 15,color: grey),)
                 ],
               );
  }
}
