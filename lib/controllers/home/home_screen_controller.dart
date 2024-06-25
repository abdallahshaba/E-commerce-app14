import 'package:e_commerce_app14/views/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController{
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController{
  int currentPage = 0;

  List<Widget> listPages = [
    const Home(),

   const Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Settings"),)
      ],
    ),
       const Column(children: [Center(child: Text("Profile"),)
      ],
    ),
       const Column(children: [Center(child: Text("Favorite"),)
      ],
    ),
  ];
  @override
  changePage(int i) {
    currentPage = i;
    update();
  }

}