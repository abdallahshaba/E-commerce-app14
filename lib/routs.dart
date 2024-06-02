import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/text_Packeages.dart';
import 'package:e_commerce_app14/views/screen/Auth/check_email.dart';
import 'package:e_commerce_app14/views/screen/Auth/forget_password_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/resetPassword_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signUp_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signin_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/success_reset_password.dart';
import 'package:e_commerce_app14/views/screen/Auth/success_signUp.dart';
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
  AppRouts.successResetPassword : (context) => const SuccessResetPasswordScreen(),
  AppRouts.successSignUp : (context) => const SuccessSignUpScreen(),
  AppRouts.checkEmail : (context) => const ChechEmailScreen(),

  // OnBoarding
    AppRouts.onBoarding : (context) => const OnBoardingScreen(),
    AppRouts.testPakeages : (context) => const TestPakeages(),
    
};