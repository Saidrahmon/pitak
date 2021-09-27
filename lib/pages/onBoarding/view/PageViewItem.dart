import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pitak/constants.dart';

import 'TitleAndSubtitle.dart';

class PageViewItem extends StatelessWidget {
  String title;
  String subTitle;
  String image;
  bool isLast;
  Function? next;
  Function? skip;

  PageViewItem({required this.title, required this.subTitle, required this.image, required this.isLast, this.next, this.skip});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Image.asset('assets/images/${this.image}'),
          SizedBox(
            height: 24,
          ),
          TitleAndSubTitle(
            title: this.title,
            subTitle: this.title,
          ),
          Spacer(),
          (this.isLast)
              ? Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          this.skip!();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Начать',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        'Пропустить',
                        style: TextStyle(fontWeight: FontWeight.w600, color: mainColor, fontSize: 16.0),
                      ),
                      onPressed: () {
                        this.skip!();
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        this.next!();
                      },
                      child: Text(
                        'Далее',
                        style: TextStyle(fontWeight: FontWeight.w600, color: mainColor, fontSize: 16.0),
                      ),
                    ),
                  ],
                ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
