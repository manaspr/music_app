import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicPlay());
}

class MusicPlay extends StatelessWidget {
  const MusicPlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            PlayMusic(color: Colors.blue, tone: 1, txt: 'Sa'),
            PlayMusic(color: Colors.yellow, tone: 2, txt: 'Re'),
            PlayMusic(color: Colors.purple, tone: 3, txt: 'Ga'),
            PlayMusic(color: Colors.pink, tone: 4, txt: 'Ma'),
            PlayMusic(color: Colors.green, tone: 5, txt: 'Pa'),
            PlayMusic(color: Colors.grey, tone: 6, txt: 'Dha'),
            PlayMusic(color: Colors.red, tone: 7, txt: 'Ni'),
          ],
        )),
      ),
    );
  }
}

// --------------It can be placed in another dart file---------------------------

class PlayMusic extends StatelessWidget {
  PlayMusic(
      {Key? key, required this.color, required this.tone, required this.txt})
      : super(key: key);
  Color color;
  int tone;
  String txt;
  AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audio.play('assets/note$tone.wav');
        },
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
