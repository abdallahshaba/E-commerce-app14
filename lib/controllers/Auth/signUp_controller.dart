import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
 late TextEditingController email;
 late TextEditingController password;
 late TextEditingController username;
 late TextEditingController phone;
  signUpn();
  goToSignInpPage();
}

class SignUpControllerImp extends SignUpController {
  @override
  goToSignInpPage() {
    Get.offAllNamed(AppRouts.signIn);
  } // this function was done because i use the getx along

  @override
  signUpn() {}
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();
    super.onInit();

  }
  
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    password.dispose();
    username.dispose();
    super.dispose();
  }
}
