import 'package:e_commerce_app14/controllers/Auth/signIn_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/constant/imageAsset.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_appBar_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_button_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_text_form_field_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/text_signIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInControllerImp controller = Get.put(SignInControllerImp());
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: AppColor.kBackgroundColor,
            child:  Column(
              children: [
               const SizedBox(
                  height: 50,
                ),
                CustomAppBarAuth(
                  text: "9".tr,
                  onTap: () {
                  },
                ),
               const SizedBox(
                  height: 35,
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
                  Image.asset(
                    AppImageAsset.logo,
                    height: 180,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextTitleAuth(text: "Welcome Back"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextBodyAuth(
                      text:
                          'Sign In with Your Email And Password OR Continue with Social Media'),
                  const SizedBox(
                    height: 30,
                  ),
                   CustomTextFormField(
                    textEditingController: controller.email ,
                    name: "Email",
                    hintText: 'Enter Your Email',
                    icon: const Icon(Icons.email_outlined),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                   CustomTextFormField(
                    textEditingController: controller.password ,
                    name: "Password",
                    hintText: 'Enter Your Password',
                    icon: const Icon(Icons.lock_outline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPasswordPage();
                    },
                    child: const Text(
                      "Forget Password",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color.fromARGB(255, 142, 134, 134),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButtonAuth(
                    text22: "Sign In",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   CustomTextSignInOrSignUp(
                    onTap: () {
                      controller.goToSignUpPage();
                    },
                    text1: "Don't have an account?",
                    text2: "  Sign Up",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
