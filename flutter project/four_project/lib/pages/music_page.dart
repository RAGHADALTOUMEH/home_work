import 'package:flutter/material.dart';
import '../widgets/sound.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SoundKey(color: Colors.red, soundNumber: 1),
            SoundKey(color: Colors.orange, soundNumber: 2),
            SoundKey(color: Colors.yellow, soundNumber: 3),
            SoundKey(color: Colors.green, soundNumber: 4),
            SoundKey(color: Colors.teal, soundNumber: 5),
            SoundKey(color: Colors.blue, soundNumber: 6),
            SoundKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
