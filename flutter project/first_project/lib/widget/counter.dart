import 'package:flutter/material.dart';
import 'info.dart';
import 'round_icon_button.dart';

class CounterCard extends StatelessWidget {
  final String title;
  final int value;
  final Color color;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const CounterCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      title: title,
      value: '$value',
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundIconButton(icon: Icons.remove, onPressed: onRemove),
          const SizedBox(width: 10),
          RoundIconButton(icon: Icons.add, onPressed: onAdd),
        ],
      ),
    );
  }
}
