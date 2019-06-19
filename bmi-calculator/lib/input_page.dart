import 'package:flutter/material.dart';

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
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(0xFF1D1E33)),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(color: Color(0xFF1D1E33)),
              ),
              Expanded(
                child: ReusableCard(color: Color(0xFF1D1E33)),
              ),
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
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
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color,
        ),
      ),
    );
  }
}
