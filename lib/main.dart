import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

const List<String> notes = [
  'note1.wav',
  'note2.wav',
  'note3.wav',
  'note4.wav',
  'note5.wav',
  'note6.wav',
  'note7.wav',
];

const List<Color> colors = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.brown,
];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Xylophone(),
    ),
  ));
}

class Xylophone extends StatelessWidget {
  const Xylophone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
          notes.length,
          (index) => Expanded(
            child: FlatButton(
              onPressed: () {
                final AudioCache player = AudioCache();
                player.play(notes[index]);
              },
              color: colors[index],
              child: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
