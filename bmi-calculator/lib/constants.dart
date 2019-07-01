import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kBottomContainerTopInset = 10.0;
const kBottomContainerColor = Color(0xFFEB1555);

const kReusableCardBorderRadius = 8.0;
const kReusableCardMargins = 15.0;
const kReusableCardActiveColor = Color(0xFF1D1E33);
const kReusableCardInActiveColor = Color(0xFF111328);
const kReusableCardTextColor = Color(0xFF8D8E98);

const kReusableIconSize = 80.0;
const kReusableIconTextSize = 18.0;

enum Gender {
  male,
  female,
}

const kLabelTextStyle = TextStyle(
  fontSize: kReusableIconTextSize,
  color: kReusableCardTextColor,
);

const kLabelNumberStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

const kLargeButtonTextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
