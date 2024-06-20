
import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/data/dataSource/remote/auth/sign_up_remot.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;

  late StatusRequest statusRequest;

  SignupData signupData = SignupData();

  List data = [];

  @override
  signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.postdata(
          username.text, password.text, email.text , phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRouts.successSignUp);
        } else {
           Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
          statusRequest = StatusRequest.failure;
          print(response);
        }
      }
      update();
    } else {}
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRouts.signIn);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }
}
