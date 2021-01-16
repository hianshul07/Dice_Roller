import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homePage.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(){
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
      },
      home: HomePage(),
    );
  }
}
