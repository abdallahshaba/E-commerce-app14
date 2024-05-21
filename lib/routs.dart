import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/views/screen/Auth/signUp_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signin_screen.dart';
import 'package:e_commerce_app14/views/screen/onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouts.signIn : (context) => const SignInScreen(),
  AppRouts.onBoarding : (context) => const OnBoardingScreen(),
  AppRouts.signUp : (context) => const SignUpScreen()
};