import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        backgroundColor: Colors.green.shade900,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var DiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.green.shade900
              ),
              onPressed: () {
                setState(() {
                  // print('Button Pressed');
                  DiceNumber = Random().nextInt(6)+1;
                // print('Dice number = $DiceNumber');
                });
                

              },
              child: Image.asset('images/dice-$DiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}