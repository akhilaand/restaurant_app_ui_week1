import 'package:flutter/material.dart';

import '../../../../utils/color.dart';
import '../../../../utils/constants.dart';
class CustomTabBar extends StatefulWidget {

   CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<TabBarClass>isSelectedTabBar=[
    TabBarClass(tabBarName: "Promotion", isSelected: true),
    TabBarClass(tabBarName: "Free Drink", isSelected: false),
    TabBarClass(tabBarName: "Happy Hour", isSelected: false),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: isSelectedTabBar.length,
        // shrinkWrap: false,
        itemBuilder: (BuildContext context, int index)=>buildTabBarContainer(
            categoryName: isSelectedTabBar[index].tabBarName,
            isSelected: isSelectedTabBar[index].isSelected,
        index: index
        ),
      ),
    );
  }

  Padding buildTabBarContainer({required String categoryName,required bool isSelected,required int index}) {
    return Padding(
      padding: const EdgeInsets.only(right: 2.0,left: 2),
      child: InkWell(
        splashColor: Colors.transparent,

        onTap: (){
       for(var item in isSelectedTabBar){
         int itemIndex=isSelectedTabBar.indexOf(item);
         if(itemIndex!=index){
           item.isSelected=false;
         }
       }
          setState(() {
            isSelectedTabBar[index].isSelected=true;
          });
        },
        child: Container(
              decoration:  BoxDecoration(
                  border: Border.all(color: isSelected?white.withOpacity(0.1):Colors.transparent),
                  borderRadius: const BorderRadius.all(Radius.circular(30))
              ),
              child:  Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: appPadding,vertical: 0),
                  child: Text(categoryName,
                    style:  TextStyle(
                        fontSize: 17,
                        color: isSelected?white:white.withOpacity(0.1),
                        fontWeight: isSelected?FontWeight.w600:FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}

class TabBarClass{
   String tabBarName;
   bool isSelected;
  TabBarClass({required this.tabBarName,required this.isSelected});
}