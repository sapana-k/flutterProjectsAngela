import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player =
        AssetsAudioPlayer(); //instance created, plays single audio file
    player.open(Audio('assets/note$n.wav'));
  }

  Widget BuildXyloKey({required Color xylocolor, required int sound}) {
    return Expanded(
      child: FlatButton(
        color: xylocolor,
        onPressed: () {
          playSound(sound);
        },
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BuildXyloKey(xylocolor: Colors.red, sound: 1),
                BuildXyloKey(xylocolor: Colors.orange, sound: 2),
                BuildXyloKey(xylocolor: Colors.yellow, sound: 3),
                BuildXyloKey(xylocolor: Colors.green, sound: 4),
                BuildXyloKey(xylocolor: Colors.blue, sound: 5),
                BuildXyloKey(xylocolor: Colors.indigo, sound: 6),
                BuildXyloKey(xylocolor: Colors.purple, sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
