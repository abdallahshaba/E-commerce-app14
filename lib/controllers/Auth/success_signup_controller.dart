import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{
  goToSignInPage();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToSignInPage() {
    Get.offAllNamed(AppRouts.signIn);
  }

}