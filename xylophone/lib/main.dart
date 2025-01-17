import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  final player = AudioCache();
  void playSound(int i){
    player.play('note$i.wav');
  }

  Expanded buildKey({int number, Color color}){
    return 
      Expanded(
        child: FlatButton(
          onPressed: (){
            playSound(number);
          },
          color: color,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.purple, number: 4),
              buildKey(color: Colors.green, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.teal, number: 7),

            ],
          ),
        ),
      ),
    );
  }
}
