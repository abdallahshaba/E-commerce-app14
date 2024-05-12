import 'package:e_commerce_app14/core/localization/translation.dart';
import 'package:e_commerce_app14/core/services/services.dart';
import 'package:e_commerce_app14/routs.dart';
import 'package:e_commerce_app14/views/screen/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: ChangeLanguage() ,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
      routes: routes ,
    );
    
  }
  }