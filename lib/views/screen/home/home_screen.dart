import 'package:e_commerce_app14/controllers/home/home_screen_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_button_appBar.dart';
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
              child: Icon(
                Icons.shopping_basket_outlined,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
            ),
            bottomNavigationBar: BottomAppBar(
              color: AppColor.kPrimaryColor4,
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              height: 70,
              child: Row(
                children: [
                  CustomButtonAppBar(
                      text: "Home",
                      icon: Icons.home,
                      colorItemSelected: AppColor.kPrimaryColor,
                      onPressed: () {
                        controller.changePage(0);
                      },
                      isActive: controller.currentPage == 0 ? true : false),
                  CustomButtonAppBar(
                    colorItemSelected: AppColor.kPrimaryColor,
                    isActive: controller.currentPage == 1 ? true : false,
                    text: "Settings",
                    icon: Icons.settings,
                    onPressed: () {
                      controller.changePage(1);
                    },
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      CustomButtonAppBar(
                        colorItemSelected: AppColor.kPrimaryColor,
                        isActive: controller.currentPage == 2 ? true : false,
                        text: "Favorite",
                        icon: Icons.favorite,
                        onPressed: () {
                          controller.changePage(2);
                        },
                      ),
                      CustomButtonAppBar(
                        colorItemSelected: AppColor.kPrimaryColor,
                         isActive : controller.currentPage==3 ? true : false,
                        text: "Notify",
                        icon: Icons.notifications,
                        onPressed: () {
                          controller.changePage(3);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: controller.listPages.elementAt(controller.currentPage)));
  }
}
