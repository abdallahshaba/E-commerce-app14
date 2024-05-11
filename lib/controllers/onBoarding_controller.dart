import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length-1) {
      Get.offAllNamed(AppRouts.login);
    }
    pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
