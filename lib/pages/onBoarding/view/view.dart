import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitak/constants.dart';
import 'package:pitak/pages/onBoarding/controller/controller.dart';
import 'package:pitak/pages/onBoarding/view/CustomPageView.dart';
import 'package:pitak/pages/onBoarding/view/PageViewItem.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomPageView(
              pageController: controller.pageController,
              next: controller.nextView,
              skip: controller.gotoNextScreen,
            ),
            Positioned(
              left: 1,
              right: 1,
              bottom: MediaQuery.of(context).size.height * 0.15,
              child: Obx(() => DotsIndicator(
                    decorator: DotsDecorator(
                      activeColor: mainColor,
                      color: secondaryColor,
                    ),
                    dotsCount: 3,
                    position: controller.pageIndex.value,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
