import 'package:just_audio/just_audio.dart';

class AudioService {
  static final AudioPlayer _player = AudioPlayer();

  static Future<void> playSound(int soundNumber) async {
    try {
      // أوقف أي صوت شغال
      await _player.stop();

      // عين المصدر وشغل
      await _player.setAsset('assets/note$soundNumber.wav');
      await _player.play();

      print('🎵 جرب تشغيل: note$soundNumber.wav');
    } catch (e) {
      print('❌ خطأ في تشغيل الصوت: $e');
    }
  }

  // دالة للإعداد الأولي
  static Future<void> initAudio() async {
    await _player.setLoopMode(LoopMode.off);
  }
}
