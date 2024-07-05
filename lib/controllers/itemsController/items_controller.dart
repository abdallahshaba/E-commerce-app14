import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/data/dataSource/remote/items_remote/items_remote.dart';
import 'package:e_commerce_app14/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  initialData();
  changeCat(val , String catValue);
  getItems(String id);
  goToItemsDetails(ItemsModel itemsModel);
}
class ItemsControllerImp extends ItemsController{
  List categoriesInfo = [];
  int? selectedCat;
  String? catId;

 ItemsData itemsData =ItemsData(Get.find());
  List data = [];

  late StatusRequest statusRequest;


  @override
  void onInit() {
    initialData();
    getItems(catId!) ;
    super.onInit();
  }


  @override
  initialData() {
     categoriesInfo = Get.arguments['categoriesInfooo'];
     selectedCat = Get.arguments['selectedCattt'];
     catId = Get.arguments['catId'];
  }


  
  @override
  changeCat(val , catValue) {
    selectedCat = val;
    catId = catValue;
     getItems(catId!) ;
    update();
  }
  

  @override
  getItems(id) async{
    statusRequest = StatusRequest.loading;
    data.clear();
    var response = await itemsData.getData(id);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
  
  @override
  goToItemsDetails(itemsModel) {
    Get.toNamed(AppRouts.itemsDetails , arguments: {
      "itemsModel" : itemsModel
    });
  }

}