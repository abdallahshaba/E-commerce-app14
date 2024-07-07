import 'package:e_commerce_app14/core/class/status_request.dart';
import 'package:e_commerce_app14/core/functions/handling_data_controller.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:e_commerce_app14/data/dataSource/remote/favorite_remote/add_to_favorite.dart';
import 'package:e_commerce_app14/data/dataSource/remote/favorite_remote/remove_from_favorite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  Map isFavorite = {};

  setFavorite(itemId, value) {
    isFavorite[itemId] = value;
    update();
  }

  FavoriteData favoriteData = FavoriteData(Get.find());
  RemoveFromFavorite removeFromFavorite2 = RemoveFromFavorite(Get.find());

  List data = [];

  MyServices myServices = Get.find();
  late StatusRequest statusRequest;

  addToFavorite(String itemId) async {
    statusRequest = StatusRequest.loading;
    data.clear();
    var response = await favoriteData.addToFavorite(
        myServices.sharedPreference.getString("id")!, itemId);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        Get.rawSnackbar(title: "Yes" , messageText: const Text("تم اضافة المنتج الي المفضلة", style: TextStyle(color: Colors.white),));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


 removeFromFavorite(String itemId) async {
    statusRequest = StatusRequest.loading;
    data.clear();
    var response = await removeFromFavorite2.removeData(
        myServices.sharedPreference.getString("id")!, itemId);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        Get.rawSnackbar(title: "Yes" , messageText: const Text("تم ازالة المنتج الي المفضلة" , style: TextStyle(color: Colors.white),));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }


}

// key => item id
// value => 1 or 0