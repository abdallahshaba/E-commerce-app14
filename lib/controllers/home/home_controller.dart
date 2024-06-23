import 'package:e_commerce_app14/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

}
 
class HomeControllerImp extends HomeController{
  MyServices myServices = Get.find();

  String? userName;
  String? id;
  
  initialData (){
    userName = myServices.sharedPreference.getString("username");
    id = myServices.sharedPreference.getString("id");
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}