import 'package:e_commerce_app14/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsDetailsController extends GetxController{
  initialData();
}
class ItemsDetailsControllerImp extends ItemsDetailsController{

  late ItemsModel itemsModel;
  
  List subItems = [
    {"name" : "red" , "id" : 1 , "active" : "0"},
    {"name" : "yellow" , "id" : 2 , "active" : "0"},
    {"name" : "black" , "id" : 3 , "active" : "1"},
  ];

  @override
  initialData() {
   itemsModel = Get.arguments["itemsModel"];
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }

}