import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;
  var pageIndex = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        this.pageIndex.value = pageController.page!;
      });
  }

  gotoNextScreen() {
    print('go to');
  }

  nextView() {
    this.pageController.nextPage(curve: Curves.easeIn, duration: Duration(milliseconds: 500));
  }
}
