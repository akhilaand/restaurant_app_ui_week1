import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              buildDateRowWidget(),
              buildCartContainer()
            ],
          )
        ],
      ),
    );
  }

  Column buildDateRowWidget() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Tonight",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600
                  ),),
                SizedBox(
                  height:5,
                ),
                Text("Monday, November 25",
                  style: secondryTextStyle,),
              ],
            );
  }

  Container buildCartContainer() {
    return Container(

              width: 80,
              decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.grey.withOpacity(0.1),

              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/images/food_cart.png"),
                        const Positioned(
                          left: 3,
                          top: 2,
                          child: CircleAvatar(
                            radius:15,
                            backgroundColor: primaryColor,
                            child: Text("2",style: TextStyle(color: white),),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,

                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top:6.0),
                          child: Text("\$",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text("32",style: TextStyle(fontSize: 33,fontWeight: FontWeight.w600),),
                      ],
                    )
                  ],
                ),
              ),
            );
  }
}