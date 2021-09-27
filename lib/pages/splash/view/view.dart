import 'package:flutter/material.dart';
import 'package:pitak/constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainColor,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/images/ellipse_top.png'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/ellipse_right.png'),
            ),
            Positioned(
              bottom: 300,
              left: 0,
              child: Image.asset('assets/images/ellipse_left.png'),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset('assets/images/ellipse_bottom.png'),
            ),
            Center(
              child: Image.asset('assets/images/logo.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pitak',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
