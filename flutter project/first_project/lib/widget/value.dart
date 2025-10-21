import 'package:flutter/material.dart';

class ValueCard extends StatelessWidget {
  final String label;
  final int value;
  final Color color;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ValueCard({
    super.key,
    required this.label,
    required this.value,
    required this.color,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: const TextStyle(fontSize: 18)),
          Text('$value',
              style:
                  const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                heroTag: '${label}-minus',
                onPressed: onDecrement,
                backgroundColor: Colors.grey[700],
                child: const Icon(Icons.remove),
                mini: true,
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: '${label}-plus',
                onPressed: onIncrement,
                backgroundColor: Colors.grey[700],
                child: const Icon(Icons.add),
                mini: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
