import 'package:flutter/material.dart';
import '../services/audio_service.dart';

class SoundKey extends StatelessWidget {
  final Color color;
  final int soundNumber;

  const SoundKey({
    super.key,
    required this.color,
    required this.soundNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            AudioService.playSound(soundNumber);
          },
          child: const Text(''),
        ),
      ),
    );
  }
}
