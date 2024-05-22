import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/views/screen/Auth/forget_password_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/resetPassword_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signUp_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signin_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/verifyCode_screen.dart';
import 'package:e_commerce_app14/views/screen/onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {

  // Auth
  AppRouts.signIn : (context) => const SignInScreen(),
  AppRouts.signUp : (context) => const SignUpScreen(),
  AppRouts.forgetPassword : (context) => const ForgerPasswordScreen(),
  AppRouts.resetPassword : (context) => const ResetPasswordScreen(),
  AppRouts.verifyCode : (context) => const VerifyCodeScreen(),

  // OnBoarding
    AppRouts.onBoarding : (context) => const OnBoardingScreen(),
};