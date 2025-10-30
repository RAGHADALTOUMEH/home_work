import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class InputCard extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  const InputCard({
    Key? key,
    required this.title,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              title,
              style: TextStyle(
                fontSize: 16.0, // كان 18 وصار 16
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 2.0), // مسافة أقل
            Text(
              value,
              style: const TextStyle(
                fontSize: 45.0, // كان 40 وصار 32
                fontWeight: FontWeight.w900,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 2.0), // مسافة أقل
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 55.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: onDecrement,
                    icon: const Icon(
                      Icons.remove,
                      color: AppColors.textPrimary,
                      size: 40,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
                const SizedBox(width: 20.0),
                Container(
                  width: 55.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: AppColors.button,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: onIncrement,
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.textPrimary,
                      size: 40,
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
