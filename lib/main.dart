import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitak/AppPages.dart';
import 'package:pitak/AppRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppRoutes.SPLASH_SCREEN,
    );
  }
}


