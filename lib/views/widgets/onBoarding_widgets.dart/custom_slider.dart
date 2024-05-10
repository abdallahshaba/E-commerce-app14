import 'package:e_commerce_app14/controllers/onBoarding_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/data/dataSource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
        print(value);
      },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        Text(
                          onBoardingList[index].title!,
                          style: Styles.boldtextStyle20,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                            child: Image.asset(
                          onBoardingList[index].image!,
                          width: 250,
                          height: 280,
                          fit: BoxFit.fill,
                        )),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(onBoardingList[index].body!,
                              style: Styles.regulartextStyle16
                                  .copyWith(height: 2, color: AppColor.grey),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                    );
  }
}