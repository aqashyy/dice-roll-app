import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
   DicePage({super.key});
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
                print('Button Pressed');
              },
              child: Image.asset('images/dice-$DiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
