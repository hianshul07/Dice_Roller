import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage diceimage;
  AssetImage diceimage1;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage = one;
      diceimage1 = three;
    });
  }

  void rollDices() {
    rollDice1();
    rollDice2();
  }

  void rollDice1() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;

      case 2:
        newImage = two;
        break;

      case 3:
        newImage = three;
        break;

      case 4:
        newImage = four;
        break;

      case 5:
        newImage = five;
        break;

      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage = newImage;
    });
  }

  void rollDice2() {
    int random = (1 + Random().nextInt(6));

    AssetImage newImage;

    switch (random) {
      case 1:
        newImage = one;
        break;

      case 2:
        newImage = two;
        break;

      case 3:
        newImage = three;
        break;

      case 4:
        newImage = four;
        break;

      case 5:
        newImage = five;
        break;

      case 6:
        newImage = six;
        break;
    }
    setState(() {
      diceimage1 = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text(
          'Dice Roller',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: diceimage,
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 45,
              ),
              Image(
                image: diceimage1,
                height: 150,
                width: 150,
              ),
              Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.only(top: 150),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70.0)),
                  color: Colors.pink[500],
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text("Let's Roll",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 20)),
                  onPressed: rollDices,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
