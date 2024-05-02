import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';

class DotControllerOnBoarding extends StatelessWidget {
  const DotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         ...List.generate(
                        onBoardingList.length, (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          duration: const Duration(milliseconds: 900),
                          ),
                          )
                      ],
                     );
  }
}