import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
 late TextEditingController email;

  checkemail();
  goToVerifyCode();
}

class ForgetPaswwordControllerImp extends ForgetPasswordController {
  @override
  goToVerifyCode() {
    Get.offNamed(AppRouts.verifyCode);
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
