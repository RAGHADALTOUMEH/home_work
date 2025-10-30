import 'package:flutter/material.dart';
import 'pages/music_page.dart';
import 'services/audio_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // إعداد الصوت عند بدء التطبيق
    AudioService.initAudio();

    return MaterialApp(
      home: MusicPage(),
    );
  }
}
