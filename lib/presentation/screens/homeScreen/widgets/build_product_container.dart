import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/constants.dart';
class BuildProductContainer extends StatelessWidget {
  const BuildProductContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/images/cofee.jpg",
                fit: BoxFit.fill,
              )),
          buildOfferTextContainer(),
          Positioned(
            bottom: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Cappucino",style:TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 30),),
                SizedBox(
                  height: 3,
                ),
                Text("Fresh Drink",style:TextStyle(
                  color: Colors.white54,
                    fontWeight: FontWeight.w400, fontSize: 17),)
              ],
            ),
          )
        ],
      ),
    );
  }

  Positioned buildOfferTextContainer() {
    return Positioned(
          top: 20,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                color: black, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(appPadding / 2),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "30",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Text(
                          "%",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "Discount",
                    style: TextStyle(
                        color: grey,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
