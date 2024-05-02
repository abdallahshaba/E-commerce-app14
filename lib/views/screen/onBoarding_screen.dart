import 'package:e_commerce_app14/controllers/onBoarding_controller.dart';
import 'package:e_commerce_app14/views/widgets/onBoarding_widgets.dart/custom_buttom.dart';
import 'package:e_commerce_app14/views/widgets/onBoarding_widgets.dart/custom_slider.dart';
import 'package:e_commerce_app14/views/widgets/onBoarding_widgets.dart/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const  Scaffold(
      body:  Column(
        children:  [
           SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding()
          ),
           Expanded(
            flex: 1,
            child: Column(
              children: [DotControllerOnBoarding()],
            ),
          ),
           CustomButtonOnBoarding(),
           SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
