import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
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
                foregroundColor: Colors.blue.shade900
              ),
              onPressed: () {
                // player.play(AssetSource('sounds/dice_roll.mp3')); // Adjust filename as needed
                setState(() {
                  // print('Button Pressed');
                  playSound();
                  DiceNumber = Random().nextInt(6)+1;
                // print('Dice number = $DiceNumber');
                });
              },
              child: Image.asset('assets/images/dice-$DiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> playSound() async {
    String audioPath = "sounds/dice_roll.mp3";
    player.play(AssetSource(audioPath));
  }
}
