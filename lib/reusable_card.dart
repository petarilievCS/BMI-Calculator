// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

const margin = 15.0;
const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final void Function()? onTap;

  const ReusableCard(this.color, [this.cardChild, this.onTap]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: EdgeInsets.all(margin),
        child: cardChild,
      ),
    );
  }
}
