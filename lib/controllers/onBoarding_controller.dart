import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  @override
  next() {}

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
}
