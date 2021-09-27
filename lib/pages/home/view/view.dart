import 'package:flutter/material.dart';
import 'package:pitak/widgets/CustomButton.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomButton(label: 'jaja', onPress: (){},),
      ),
    );
  }
}
