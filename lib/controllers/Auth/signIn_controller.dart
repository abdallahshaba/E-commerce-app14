import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/core/constant/colors.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/data/dataSource/remote/auth/sign_in_remot.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignInController extends GetxController {
  signIn();
  goToSignUpPage();
  goToForgetPasswordPage();
}

class SignInControllerImp extends SignInController {
  GlobalKey<FormState> formState = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;

  StatusRequest statusRequest = StatusRequest.noone;

  SignInData signInData = SignInData();

  bool? isShowPassword = true;

  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
  }

  @override
  goToSignUpPage() {
    Get.offNamed(AppRouts.signUp);
  }

  @override
  signIn() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signInData.postdata(email.text, password.text);
      print("=========================== controller $response");
      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          Get.offNamed(AppRouts.homeScreen);
        } else {
          Get.defaultDialog(
              title: "ُWarning", titleStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.kPrimaryColor), 
                middleText: "Email Or Password Not Correct!" , middleTextStyle: const TextStyle(
                fontWeight: FontWeight.bold) );
          statusRequest == StatusRequest.failure;
        }
      }
      update();
    } else {}
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
