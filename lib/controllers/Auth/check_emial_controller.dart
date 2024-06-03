import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
 late TextEditingController email;

  checkemail();
  goToVerifyCodeSignUpScreen();
}

class CheckEmailControllerImp extends CheckEmailController {
  @override
  goToVerifyCodeSignUpScreen() {
    Get.offNamed(AppRouts.verifyCodeSignUp);
  }

  @override
  checkemail() {}
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();

  }
  
  @override
  void dispose() {
    email.dispose();
    
    super.dispose();
  }
}
