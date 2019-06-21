import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerTopInset = 10.0;
const bottomContainerColor = Color(0xFFEB1555);

const reusableCardBorderRadius = 8.0;
const reusableCardMargins = 15.0;
const reusableCardActiveColor = Color(0xFF1D1E33);
const reusableCardTextColor = Color(0xFF8D8E98);

const reusableIconSize = 80.0;
const reusableIconTextSize = 18.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(
                    color: reusableCardActiveColor,
                    cardChild: ReusableIconChild(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: reusableCardActiveColor,
                    cardChild: ReusableIconChild(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
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

class ReusableIconChild extends StatelessWidget {
  final IconData icon;
  final String text;

  ReusableIconChild({@required this.icon, this.text});

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
          text,
          style: TextStyle(
            fontSize: reusableIconTextSize,
            color: reusableCardTextColor,
          ),
        ),
      ],
    );
  }
}
