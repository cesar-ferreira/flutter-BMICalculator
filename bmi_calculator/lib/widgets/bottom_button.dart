import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.title, @required this.onTap});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 8),
        width: double.infinity,
        height: 80,
      ),
    );
  }
}