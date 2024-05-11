import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/views/screen/Auth/login_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRouts.login : (context) => const LoginScreen()
};