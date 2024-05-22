import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
 late TextEditingController email;
 late TextEditingController password;
  signIn();
  goToSignUpPage();
  goToForgetPasswordPage();
}

class SignInControllerImp extends SignInController {
  @override
  goToSignUpPage() {
    Get.toNamed(AppRouts.signUp);
  }

  @override
  signIn() {}
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();

  }
  @override
  goToForgetPasswordPage() {
    Get.toNamed(AppRouts.forgetPassword);
  }
  
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    
    super.dispose();
  }
}
