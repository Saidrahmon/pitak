import 'package:get/get.dart';
import 'package:pitak/AppRoutes.dart';
import 'package:pitak/pages/home/binding/binding.dart';
import 'package:pitak/pages/home/view/view.dart';
import 'package:pitak/pages/onBoarding/binding/binding.dart';
import 'package:pitak/pages/onBoarding/view/view.dart';
import 'package:pitak/pages/splash/binding/binding.dart';
import 'package:pitak/pages/splash/view/view.dart';

class AppPages {
  static List<GetPage> routes = [
    GetPage(name: AppRoutes.SPLASH_SCREEN, page: () => SplashScreen(), binding: SplashBinding()),
    GetPage(name: AppRoutes.ON_BOARDING, page: () => OnBoardingScreen(), binding: OnBoardingBinding()),
    GetPage(name: AppRoutes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}
