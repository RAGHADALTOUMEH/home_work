import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onTap;

  const BottomButton(
      {super.key,
      required this.label,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: onTap,
        child: Text(label,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
