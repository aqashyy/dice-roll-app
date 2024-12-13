import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';
// import 'package:just_audio/just_audio.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
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
  // AudioPlayer player = AudioPlayer();
  final player = AudioPlayer();
  int counter = 1;
  double rotationAngle = 0;
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
              style:
                  TextButton.styleFrom(foregroundColor: Colors.blue.shade900),
              onPressed: () {
                rollDice();
              },
              child: Transform.rotate(
                angle: rotationAngle,
                child: Image.asset('assets/images/dice-$DiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Function for rolling dice
  Future<void> rollDice() async {
    String audioPath = "sounds/dice_roll.mp3";

    Timer.periodic(const Duration(milliseconds: 80), (timer) {
      player.play(AssetSource(audioPath)); // for play sound
      rotationAngle = Random().nextDouble() * 180;
      counter++;
      setState(() {
        // print('Button Pressed');
        DiceNumber = Random().nextInt(6) + 1;
        // print('Dice number = $DiceNumber');
      });
      // statement for stop timer
      if (counter >= 13) {
        timer.cancel();
        counter = 1;
        rotationAngle = 0;
      }
    });
  }
}
