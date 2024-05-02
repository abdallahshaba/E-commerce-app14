import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
                onPressed: (){},
                padding: const EdgeInsets.symmetric(horizontal: 120 , vertical: 10),
                textColor: Colors.white,
                color: AppColor.primaryColor,
                child: const Text("Continue" , style: Styles.boldtextStyle18,),
                );
  }
}