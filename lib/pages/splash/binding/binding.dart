import 'package:get/get.dart';
import 'package:pitak/pages/splash/controller/controller.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}