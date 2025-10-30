import 'package:flutter/material.dart';
import '../models/gender.dart';
import '../constants/app_colors.dart';

class GenderCard extends StatelessWidget {
  final Gender gender;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderCard({
    Key? key,
    required this.gender,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: gender == Gender.male
                ? AppColors.maleCard
                : (isSelected ? AppColors.cardActive : AppColors.cardInactive),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                gender == Gender.male ? Icons.male : Icons.female,
                size: 100.0, // كان 80 وصار 60
                color: AppColors.textPrimary,
              ),
              const SizedBox(height: 5.0), // مسافة أقل
              Text(
                gender == Gender.male ? 'MALE' : 'FEMALE',
                style: TextStyle(
                  fontSize: 16.0, // كان 18 وصار 16
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
