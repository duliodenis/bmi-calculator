import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTap;

  ReusableCard({@required this.color, this.cardChild, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kReusableCardMargins),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kReusableCardBorderRadius),
          color: color,
        ),
      ),
    );
  }
}
