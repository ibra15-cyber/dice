import 'package:flutter/material.dart';
import "dart:math";

//main as in java
void main() {
  //run an obj
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),

        //our body its a class
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //instance variable
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  //our methods
  void changeDice (){
    setState( () {
      leftDiceNumber = Random().nextInt(6)  + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      // print("The dice is changed to $leftDiceNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    //our app is in main but we are calling body only here
    return Center(
      child: Row(children: <Widget>[
        //1st child
        Expanded(
          child: TextButton(
            onPressed: () {
              changeDice();
              },
            child: Image.asset("images/dice$leftDiceNumber.png"),
          ),
        ),

        //2nd child
        Expanded(
          child: TextButton(
            //anonymous or arrow fn
            onPressed: () {
              changeDice();
              // setState(() {
              //   rightDiceNumber = Random().nextInt(6) + 1;
              //   leftDiceNumber = Random().nextInt(6)  + 1;
              //   // print("Right button got pressed $rightDiceNumber");
              //
              // });
              },
            child: Image.asset("images/dice$rightDiceNumber.png"),
          ),
        ),
      ]),
    );
  }
}
