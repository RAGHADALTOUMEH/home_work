import 'package:flutter/material.dart';
import '../widget/gender.dart';
import '../widget/info.dart';
import '../widget/counter.dart';
import '../widget/bottom_button.dart';
import 'result.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 174;
  int weight = 60;
  int age = 29;

  static const backgroundColor = Color(0xFF0A0E21);
  static const activeCardColor = Color(0xFF1D1E33);
  static const inactiveCardColor = Color(0xFF111328);
  static const pinkColor = Color(0xFFEB1555);

  double get bmi => weight / ((height / 100) * (height / 100));

  String get bmiCategory {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  String get bmiAdvice {
    if (bmi < 18.5) return 'Try increasing your calorie intake.';
    if (bmi < 25) return 'You are in a healthy range! Keep it up!';
    if (bmi < 30) return 'Consider a balanced diet and exercise.';
    return 'Consult a professional for health guidance.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          backgroundColor: backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GenderCard(
                    label: 'MALE',
                    icon: Icons.male,
                    selected: selectedGender == Gender.male,
                    colorActive: activeCardColor,
                    colorInactive: inactiveCardColor,
                    onTap: () => setState(() => selectedGender = Gender.male),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: GenderCard(
                    label: 'FEMALE',
                    icon: Icons.female,
                    selected: selectedGender == Gender.female,
                    colorActive: activeCardColor,
                    colorInactive: inactiveCardColor,
                    onTap: () => setState(() => selectedGender = Gender.female),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            InfoCard(
              title: 'HEIGHT',
              value: '$height',
              unit: 'cm',
              color: activeCardColor,
              child: Slider(
                value: height.toDouble(),
                min: 100,
                max: 220,
                activeColor: pinkColor,
                inactiveColor: Colors.white24,
                onChanged: (val) => setState(() => height = val.round()),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: CounterCard(
                    title: 'WEIGHT',
                    value: weight,
                    color: activeCardColor,
                    onAdd: () => setState(() => weight++),
                    onRemove: () => setState(() => weight--),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CounterCard(
                    title: 'AGE',
                    value: age,
                    color: activeCardColor,
                    onAdd: () => setState(() => age++),
                    onRemove: () => setState(() => age--),
                  ),
                ),
              ],
            ),
            const Spacer(),
            BottomButton(
              label: 'CALCULATE',
              color: pinkColor,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmi: bmi,
                    category: bmiCategory,
                    advice: bmiAdvice,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
