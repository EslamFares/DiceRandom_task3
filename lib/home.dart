import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int randomNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('img'),
      ),
      body: Container(
        child: Center(
            child: GestureDetector(
          onTap: () {
            setState(() {
              randomNum = Random().nextInt(6) + 1;
              print(randomNum);
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Image.asset(
              'assets/img/$randomNum.png',
              height: 200,
              width: 200,
              color: Colors.black,
            ),
          ),
        )),
      ),
    );
  }
}
