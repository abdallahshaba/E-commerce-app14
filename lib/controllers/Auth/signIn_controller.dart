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
    
    GlobalKey<FormState> formState = GlobalKey(); 

  @override
  goToSignUpPage() {
    Get.offNamed(AppRouts.signUp);
  }

  @override
  signIn() {
    var formData = formState.currentState;
    if(formData!.validate()){
      // ignore: avoid_print
      print("Valid");
    }
    else{
      // ignore: avoid_print
      print("Not Valid");
    }
  }
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
