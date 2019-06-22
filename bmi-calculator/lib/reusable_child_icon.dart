import 'package:flutter/material.dart';
import 'constants.dart';

const labelTextStyle = TextStyle(
  fontSize: reusableIconTextSize,
  color: reusableCardTextColor,
);

class ReusableChildIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  ReusableChildIcon({@required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: reusableIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
