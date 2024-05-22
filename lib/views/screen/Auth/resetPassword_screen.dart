import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/text_styles.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_button_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
  // ForgetPaswwordControllerImp controller = Get.put(ForgetPaswwordControllerImp());
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
               "Forget Password",
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
                  const CustomTextTitleAuth(text: "Chech Email"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Check with Your Email OR Continue with Social Media'),
                  const SizedBox(
                    height: 30,
                  ),       
                  //  CustomTextFormField(
                  //   textEditingController: controller.email,
                  //   name: "Email",
                  //   hintText: 'Enter Your Email',
                  //   icon: const Icon(Icons.email_outlined),
                  // ),
                  
                  const SizedBox(
                    height: 35,
                  ),
                  CustomButtonAuth(
                    text22: "Check",
                    onPressed: () {},
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
