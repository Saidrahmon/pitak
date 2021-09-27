import 'package:get/get.dart';
import 'package:pitak/pages/home/controller/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}