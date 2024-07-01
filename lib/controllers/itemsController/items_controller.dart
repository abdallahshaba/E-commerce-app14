import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/data/dataSource/remote/items_remote/items_remote.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  initialData();
  changeCat(val);
  getItems(String id);
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
  changeCat(val) {
    selectedCat = val;
    update();
  }
  

  @override
  getItems(id) async{
    statusRequest = StatusRequest.loading;
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

}