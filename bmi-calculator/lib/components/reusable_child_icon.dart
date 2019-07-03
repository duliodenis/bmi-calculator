import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

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
          size: kReusableIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
