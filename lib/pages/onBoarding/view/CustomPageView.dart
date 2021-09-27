import 'package:flutter/material.dart';

import 'PageViewItem.dart';

class CustomPageView extends StatelessWidget {

  PageController pageController;
  Function? next;
  Function? skip;

  CustomPageView({required this.pageController, this.next, this.skip});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: this.pageController,
      children: [
        PageViewItem(
          image: 'boarding_1.png',
          title: 'Легко найти водителя для поездки',
          subTitle: 'Вам не обязательно ехать в питак чтобы найти подходящего вам водителя',
          isLast: false,
          skip: this.skip,
          next: this.next
        ),
        PageViewItem(
          image: 'boarding_2.png',
          title: 'Отправляйте почту без хлопот',
          subTitle: 'Водители сами придут по указанному адресу, заберут а затем доставят почту',
          isLast: false,
          skip: this.skip,
          next: this.next,
        ),
        PageViewItem(
          image: 'boarding_3.png',
          title: 'Не тратьте зря драгоценное время',
          subTitle: 'Вы можете не ехать в питак, потеряв в дороге кучу времени, денег и нервов',
          isLast: true,
         skip: this.skip,
        ),
      ],
    );
  }
}
