import 'package:e_commerce_app14/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLang(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreference.setString("Lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    if (myServices.sharedPreference.getString("Lang") == 'ar') {
      language = const Locale("ar");

    } else if (myServices.sharedPreference.getString("Lang") == 'en') {
      language = const Locale("en");
      
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
