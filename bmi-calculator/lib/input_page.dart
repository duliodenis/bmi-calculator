import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'reusable_card.dart';
import 'reusable_child_icon.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = reusableCardInActiveColor;
  Color femaleCardColor = reusableCardInActiveColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == reusableCardInActiveColor) {
        maleCardColor = reusableCardActiveColor;
        femaleCardColor = reusableCardInActiveColor;
      } else {
        maleCardColor = reusableCardInActiveColor;
        femaleCardColor = reusableCardActiveColor;
      }
    } else {
      if (femaleCardColor == reusableCardInActiveColor) {
        femaleCardColor = reusableCardActiveColor;
        maleCardColor = reusableCardInActiveColor;
      } else {
        femaleCardColor = reusableCardInActiveColor;
        maleCardColor = reusableCardActiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('MALE BUTTON TAPPED');
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: ReusableChildIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('FEMALE BUTTON TAPPED');
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: ReusableChildIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: reusableCardActiveColor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(color: reusableCardActiveColor),
              ),
              Expanded(
                child: ReusableCard(color: reusableCardActiveColor),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: bottomContainerTopInset),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
