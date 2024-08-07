import 'package:e_commerce_app14/core/constant/appRouts.dart';
import 'package:e_commerce_app14/core/middleware/my_middleware.dart';
//import 'package:e_commerce_app14/test.dart';
import 'package:e_commerce_app14/text_Packeages.dart';
import 'package:e_commerce_app14/views/screen/Auth/forget_password_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/resetPassword_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signUp_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/signin_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/success_reset_password.dart';
import 'package:e_commerce_app14/views/screen/Auth/success_signUp.dart';
import 'package:e_commerce_app14/views/screen/Auth/verifyCode_signUp_screen.dart';
import 'package:e_commerce_app14/views/screen/Auth/verifycode_screen.dart';
import 'package:e_commerce_app14/views/screen/favorite/favorite_screen.dart';
import 'package:e_commerce_app14/views/screen/home/home_screen.dart';
import 'package:e_commerce_app14/views/screen/items/items_details_screen.dart';
import 'package:e_commerce_app14/views/screen/items/items_screen.dart';
import 'package:e_commerce_app14/views/screen/language/language_screen.dart';
import 'package:e_commerce_app14/views/screen/onBoarding/onBoarding_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';



List<GetPage<dynamic>>? routes = [
  //GetPage(name: "/", page: () => const TestPages()),
   GetPage(name: "/", page: () => const LanguageScreen(), middlewares: [
     MyMiddleWare(),
   ] ),
  GetPage(name: AppRouts.signIn, page: () => const SignInScreen()),
  GetPage(name: AppRouts.signUp, page: () => const SignUpScreen()),
  GetPage(name: AppRouts.forgetPassword, page: () => const ForgerPasswordScreen()),
  GetPage(name: AppRouts.resetPassword, page: () => const ResetPasswordScreen()),
  GetPage(name: AppRouts.verifyCode, page: () => const VerifyCodeScreen()),
  GetPage(name: AppRouts.successResetPassword, page: () => const SuccessResetPasswordScreen()),
  GetPage(name: AppRouts.successSignUp, page: () => const SuccessSignUpScreen()),
  GetPage(name: AppRouts.verifyCodeSignUp, page: () => const VerifyCodeSignUpScreen()),
  GetPage(name: AppRouts.onBoarding, page: () => const OnBoardingScreen()),
  GetPage(name: AppRouts.testPakeages, page: () => const TestPakeages()),
  //============================ Home ===================================
  GetPage(name: AppRouts.home, page: () => const HomeScreen()),
  GetPage(name: AppRouts.homeScreen, page: () => const HomeScreen()),
  GetPage(name: AppRouts.itemsScreen, page: () => const ItemsScreen()),
  GetPage(name: AppRouts.itemsDetails, page: () => const ItemsDetailsScreen()),
  GetPage(name: AppRouts.myFavorite, page: () => const FavoriteScreen()),

];