import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/constants.dart';
class BuildPaymentContainerWidget extends StatelessWidget {
  const BuildPaymentContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      right: 25,
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0,bottom: 8.0),
        child: Container(
          decoration: BoxDecoration(
              color: grey,

              borderRadius: BorderRadius.circular(20)
          ),
          height: 160,
          width: 85,
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding/2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/images/master_card.jpg")),
                const SizedBox(
                  height: 5,
                ),
                Text("Mastercard",style: TextStyle(fontSize: 11,color: white.withOpacity(0.7),fontWeight: FontWeight.w600),),
                const SizedBox(
                  height: 15,
                ),
                Text("Pay",style: TextStyle(fontSize: 22,color: white.withOpacity(0.7),fontWeight: FontWeight.w900),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}