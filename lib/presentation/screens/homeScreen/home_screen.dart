import 'package:flutter/material.dart';
import 'package:restaurant_app_week1/utils/color.dart';
import 'package:restaurant_app_week1/utils/constants.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(size: size,),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: appPadding,horizontal: appPadding),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Column(
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
                          style: TextStyle(
                            color: grey,
                              fontSize: 17,
                          ),),
                      ],
                    ),
                    Container(

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
                                    backgroundColor: Color(0xff302E3B),
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
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


