import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {

  Function onPress;
  String label;

  CustomButton({required this.label, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              this.onPress();
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                this.label,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
