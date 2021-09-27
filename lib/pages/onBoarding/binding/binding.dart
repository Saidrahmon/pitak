import 'package:get/get.dart';
import 'package:pitak/pages/onBoarding/controller/controller.dart';

class OnBoardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(OnBoardingController());
  }
}