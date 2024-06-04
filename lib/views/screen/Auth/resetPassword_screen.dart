import 'package:e_commerce_app14/controllers/Auth/reset_password_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_button_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_text_form_field_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
   ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
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
               "Reset Password",
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
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextTitleAuth(text: "New Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Please Enter New Password'),
                  const SizedBox(
                    height: 30,
                  ),       
                  CustomTextFormField(
                     // ignore: body_might_complete_normally_nullable
                     validator: (value) {
                      
                    },
                    textEditingController: controller.password,
                    name: "Password",
                    hintText: 'Enter Your Password',
                    icon: const Icon(Icons.lock_outline),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   CustomTextFormField(
                     // ignore: body_might_complete_normally_nullable
                     validator: (value) {
                      
                    },
                    textEditingController: controller.password,
                    name: "Re Password",
                    hintText: 'Re Enter Your Password',
                    icon: const Icon(Icons.lock_outline),
                  ),
                  
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButtonAuth(
                    text22: "Save",
                    onPressed: () {
                      controller.goToSuccessResetPasswordScreen();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
