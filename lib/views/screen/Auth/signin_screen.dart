import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_appBar_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_textBody_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/custom_text_form_field_Auth.dart';
import 'package:e_commerce_app14/views/widgets/Auth/cutome_textTiltle_Auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                CustomAppBarSignIn(),
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
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextTitleAuth(text: "Welcome Back"),
                  SizedBox(
                    height: 5,
                  ),
                  CustomTextBodyAuth(
                      text:
                          'Sign In with Your Email And Password OR Continue with Social Media'),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFormField(
                    name: "Email",
                    hintText: 'Enter Your Email',
                    icon: Icon(Icons.email_outlined),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomTextFormField(
                    name: "Password",
                    hintText: 'Enter Your Password',
                    icon: Icon(Icons.lock_outline),
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
