import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomContainerTopInset = 10.0;
const bottomContainerColor = Color(0xFFEB1555);

const reusableCardBorderRadius = 8.0;
const reusableCardMargins = 15.0;
const reusableCardColor = Color(0xFF1D1E33);

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
                  child: ReusableCard(color: reusableCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: reusableCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: reusableCardColor),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(color: reusableCardColor),
              ),
              Expanded(
                child: ReusableCard(color: reusableCardColor),
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

  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(reusableCardMargins),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(reusableCardBorderRadius),
          color: color,
        ),
      ),
    );
  }
}
