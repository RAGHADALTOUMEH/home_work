import 'package:flutter/material.dart';
import 'screens/input.dart';

void main() => runApp(const BMICalculatorApp());

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xFF0A0E21);
    const pinkColor = Color(0xFFEB1555);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: pinkColor),
      ),
      home: const InputPage(),
    );
  }
}
