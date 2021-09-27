import 'package:flutter/material.dart';

class TitleAndSubTitle extends StatelessWidget {

  String title;
  String subTitle;

  TitleAndSubTitle({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Text(
          this.title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1F2022),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
        Text(
          this.subTitle,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xFF808080)),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
