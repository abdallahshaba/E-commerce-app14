import 'package:e_commerce_app14/controllers/Auth/signUp_controller.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/functions/valid_input.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_appBar_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_button_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_text_form_field_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/text_signIn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
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
                  text: 'Sign Up',
                  onTap: () {
                    controller.signUp();
                  },
                ),
               const SizedBox(
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
                    const CustomTextTitleAuth(text: "Welcome Back"),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextBodyAuth(
                        text:
                            'Sign Up with Your Email And Password OR Continue with Social Media'),
                    const SizedBox(
                      height: 30,
                    ),
                     CustomTextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        return validInput(value!, 2, 20, "username");
                      },
                      textEditingController: controller.username,
                      name: "Username",
                      hintText: 'Enter Your Username',
                      icon: const Icon(Icons.person_outline_outlined),
                    ),
                    
                    const SizedBox(
                      height: 25,
                    ),
                     CustomTextFormField(
                       validator: (value) {
                        return validInput(value!, 5, 100, "email");
                      },
                      textEditingController: controller.email,
                      name: "Email",
                      hintText: 'Enter Your Email',
                      icon: const Icon(Icons.email_outlined),
                    ),
                    
                    const SizedBox(
                      height: 25,
                    ),
                     CustomTextFormField(
                       validator: (value) {
                         return validInput(value!, 4, 11, "phone");
                      },
                      textEditingController: controller.phone,
                      name: "Phone",
                      hintText: 'Enter Your Phone',
                      icon: const Icon(Icons.phone_android_outlined),
                    ),
                    
                    const SizedBox(
                      height: 25,
                    ),
                     CustomTextFormField(
                       // ignore: body_might_complete_normally_nullable
                       validator: (value) {
                        return validInput(value!, 4, 11, "password");
                      },
                      textEditingController: controller.password,
                      name: "Password",
                      hintText: 'Enter Your Password',
                      icon: const Icon(Icons.lock_outline),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButtonAuth(
                      text22: "Sign Up",
                      onPressed: () {
                        controller.signUp();
                
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     CustomTextSignInOrSignUp(
                      onTap: () {
                        controller.goToSignInpPage();
                      },
                      text1: " Already have an account?",
                      text2: "  Sign In",
                    )
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
