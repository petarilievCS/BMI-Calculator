// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  void Function() onTap;
  String text;

  BottomButton(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Within the `FirstRoute` widget
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomBarHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
