import 'package:flutter/material.dart';
import '../widget/info.dart';
import '../widget/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  final String category;
  final String advice;

  const ResultPage(
      {super.key,
      required this.bmi,
      required this.category,
      required this.advice});

  static const backgroundColor = Color(0xFF0A0E21);
  static const pinkColor = Color(0xFFEB1555);
  static const activeCardColor = Color(0xFF1D1E33);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Your Result'), backgroundColor: backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: InfoCard(
                title: category.toUpperCase(),
                value: bmi.toStringAsFixed(1),
                color: activeCardColor,
                child: Text(advice,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18)),
              ),
            ),
            const SizedBox(height: 12),
            BottomButton(
                label: 'RE-CALCULATE',
                color: pinkColor,
                onTap: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
