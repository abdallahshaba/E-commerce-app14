import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/data/dataSource/remote/items_remote/items_remote.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController{
  initialData();
  changeCat(val);
  getItems();
}
class ItemsControllerImp extends ItemsController{
  List categoriesInfo = [];
  int? selectedCat;


 ItemsData itemsData =ItemsData(Get.find());
  List data = [];

  late StatusRequest statusRequest;


  @override
  void onInit() {
    initialData();
    getItems() ;
    super.onInit();
  }


  @override
  initialData() {
     categoriesInfo = Get.arguments['categoriesInfooo'];
     selectedCat = Get.arguments['selectedCattt'];
  }


  
  @override
  changeCat(val) {
    selectedCat = val;
    update();
  }
  

  @override
  getItems() async{
    statusRequest = StatusRequest.loading;
    var response = await itemsData.getData();

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