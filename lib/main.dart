import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //our app is in main but we are calling body only here
    return Center(
      child: Row(children: <Widget>[
        //1st child
        Expanded(
          child: FlatButton(
            onPressed: () {
              print("Left button pressed");
            },
            child: Image.asset("images/dice1.png"),
          ),
        ),

        //2nd child
        Expanded(
          child: FlatButton(
            //anonymous or arrow fn
            onPressed: () {
              print("Right button got pressed");
            },
            child: Image.asset("images/dice1.png"),
          ),
        ),
      ]),
    );
  }
}
