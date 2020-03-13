import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math'; //to get randomize value
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,//to remove label
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('DiceApp'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
       body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNumber =3; //initial state declaration for left dice
  int rightDiceNumber =2;//initial state declaration for right dice
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:(){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;//+1 to continue the incr
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed:(){
                setState(() {
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
