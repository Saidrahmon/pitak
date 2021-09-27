import 'package:get/get.dart';
import 'package:pitak/AppRoutes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2)).then((value) => {
      Get.offAndToNamed(AppRoutes.ON_BOARDING)
    });
  }
}
