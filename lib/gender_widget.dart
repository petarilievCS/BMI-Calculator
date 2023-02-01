// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class GenderWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const GenderWidget(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kIconSpacing,
        ),
        Text(
          text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
