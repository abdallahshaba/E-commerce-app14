import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:e_commerce_app14/data/dataSource/remote/home/home_test_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  homeGetData();
}

class HomeControllerImp extends HomeController {
  HomeTestData homeTestData = HomeTestData(Get.find());
  MyServices myServices = Get.find();

  List data = [];
  List categories = [];
  List items = [];

  late StatusRequest statusRequest;

  String? userName;
  String? id;

  @override
  initialData() {
    userName = myServices.sharedPreference.getString("username");
    id = myServices.sharedPreference.getString("id");
  }

  @override
  homeGetData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeTestData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        categories.addAll(response['categories'],);
         items.addAll(response['items'],);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    homeGetData();
    initialData();
    super.onInit();
  }
}
