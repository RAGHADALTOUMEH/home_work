import 'package:flutter/material.dart';
import '../widget/gender_card.dart';
import '../widget/input_card.dart';
import '../widget/calculate_button.dart';
import '../models/gender.dart';
import '../constants/app_colors.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({Key? key}) : super(key: key);

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  Gender? selectedGender;
  int height = 174;
  int weight = 60;
  int age = 29;

  void _calculateBMI() {
    double heightInMeter = height / 100;
    double bmi = weight / (heightInMeter * heightInMeter);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardActive,
        title: const Text(
          'BMI Result',
          style: TextStyle(color: AppColors.textPrimary),
        ),
        content: Text(
          'Your BMI is: ${bmi.toStringAsFixed(1)}',
          style: const TextStyle(
            fontSize: 20.0,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'OK',
              style: TextStyle(color: AppColors.accent),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textPrimary,
      ),
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Gender Selection -
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    GenderCard(
                      gender: Gender.male,
                      isSelected: selectedGender == Gender.male,
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                    GenderCard(
                      gender: Gender.female,
                      isSelected: selectedGender == Gender.female,
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10.0), // مسافة بين العناصر

              // Height Input - ارتفاع أقل
              Expanded(
                flex: 1, // كان 2 وصار 1
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: AppColors.cardInactive,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 250,
                          activeColor: AppColors.sliderInactive,
                          inactiveColor: Colors.grey[600],
                          thumbColor: AppColors.accent,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              // Weight and Age Inputs - ارتفاع أقل
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    InputCard(
                      title: 'WEIGHT',
                      value: weight.toString(),
                      onDecrement: () {
                        setState(() {
                          if (weight > 1) weight--;
                        });
                      },
                      onIncrement: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                    InputCard(
                      title: 'AGE',
                      value: age.toString(),
                      onDecrement: () {
                        setState(() {
                          if (age > 1) age--;
                        });
                      },
                      onIncrement: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20.0),

              // Calculate Button
              CalculateButton(
                onPressed: _calculateBMI,
                text: 'CALCULATE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
