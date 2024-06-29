import 'package:e_commerce_app14/controllers/home/home_screen_controller.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_button_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ),
            ),
            bottomNavigationBar: const CustomButtonNavigationBar(),
           body: controller.listPages.elementAt(controller.currentPage)));
  }
}
