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
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150.0,
          width: 150.0,
          child: TextButton(
            onPressed: (){},
            child: Image(image: AssetImage('images/dice-one.png')),
            ),
           ),
      ],
    );
  }
}