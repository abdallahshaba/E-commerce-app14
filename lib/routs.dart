import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/views/screen/Auth/signin_screen.dart';
import 'package:e_commerce_app14/views/screen/onBoarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouts.login : (context) => const SignInScreen(),
  AppRouts.onBoarding : (context) => const OnBoardingScreen()
};