import 'dart:math';

import 'package:flutter/material.dart';


void main() {
    runApp(MaterialApp(
      home:  Scaffold(
        body: MainApp(),
        appBar: AppBar(
            title: const Text("Test task"),
          ),
        ),
      ),
    );
}


class MainApp extends StatefulWidget{
  //Counter({ Key? key}) : super(key: key);
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp>{
  Color myHexColor = Color.fromRGBO(255, 179, 102, 1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          myHexColor = randomColorV3(); // variant 3
        });
      },
      child: Container(
        color: myHexColor,
        width: double.infinity,
        height: double.infinity,
        child: const Center(
          child: Text('Hey there',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }


// variant 3
  Color randomColorV3(){
    final Random random = Random();
    final double randomNumber = random.nextDouble() * 16777215;
    final String hexStringColor = '#${randomNumber.round().toRadixString(16)}';
    String hexColor = hexStringColor;

    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    const int lengthString = 6;
    if (hexColor.length == lengthString) {
      hexColor = 'FF$hexColor';
    }
    const int radixNumber = 16;

    return Color(int.parse(hexColor, radix: radixNumber));
  }

}

// End





