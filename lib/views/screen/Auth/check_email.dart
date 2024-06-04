import 'package:e_commerce_app14/controllers/Auth/check_emial_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/core/functions/valid_input.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_button_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_text_form_field_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChechEmailScreen extends StatelessWidget {
  const ChechEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
   CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColor.kBackgroundColor,
            child: const Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Text(
               "Check Email",
                style: Styles.boldtextStyle20,
              ),

          ],
        ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: controller.formState,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextTitleAuth(text: "Success Sign Up"),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextBodyAuth(
                        text:
                            'Please Enter Your Email Address To Recive A Verification Code'),
                    const SizedBox(
                      height: 30,
                    ),       
                     CustomTextFormField(
                       validator: (value) {
                        return validInput(value!, 4, 100, "email");
                      },
                      textEditingController: controller.email,
                      name: "Email",
                      hintText: 'Enter Your Email',
                      icon: const Icon(Icons.email_outlined),
                    ),
                    
                    const SizedBox(
                      height: 35,
                    ),
                    CustomButtonAuth(
                      text22: "Check",
                      onPressed: () {
                        controller.goToVerifyCodeSignUpScreen();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
