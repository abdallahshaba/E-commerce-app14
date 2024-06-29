import 'package:e_commerce_app14/controllers/home/home_screen_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/views/widgets/home/custom_button_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeScreenControllerImp>(
      builder:(controller) => BottomAppBar(
              color: AppColor.kPrimaryColor4,
              shape: const CircularNotchedRectangle(),
              notchMargin: 10,
              height: 70,
              child: Row(
                children: [
                 ...List.generate(controller.listPages.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : CustomButtonAppBar(
                        colorItemSelected: AppColor.kPrimaryColor3,
                          text: controller.textPages[i],
                          icon: controller.icons[i],
                          onPressed: () {
                            controller.changePage(i);
                          },
                          isActive: controller.currentPage == i ? true : false);
                }))

                ],
              ),
            ),
      );
  }
}