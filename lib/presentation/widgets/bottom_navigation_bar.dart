import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../utils/color.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height/11,
      decoration:  BoxDecoration(
          color: bottomBarBlack,

          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
      ),
      child: SalomonBottomBar(
        unselectedItemColor: const Color(0xff48485B),
        selectedItemColor: white,
        currentIndex: currentIndex,

        onTap: (i) => setState(() => currentIndex = i),
        items: [

          /// Home
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),

          ),

          /// Categories
          SalomonBottomBarItem(
            icon: const Icon(Icons.view_agenda_outlined),
            title: const Text("Categories"),

          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
          ),


        ],
      ),
    );
  }
}