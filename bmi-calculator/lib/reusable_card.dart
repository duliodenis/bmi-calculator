import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(reusableCardMargins),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(reusableCardBorderRadius),
        color: color,
      ),
    );
  }
}
