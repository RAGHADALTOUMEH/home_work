import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.task_alt_outlined,
            size: 80.0,
            color: const Color.fromARGB(255, 152, 224, 216),
          ),
          const SizedBox(height: 24.0),
          Text(
            'No tasks yet',
            style: TextStyle(
              fontSize: 18.0,
              color: const Color.fromARGB(255, 79, 79, 80),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Add a task to get started',
            style: TextStyle(
              fontSize: 16.0,
              color: const Color.fromARGB(190, 70, 70, 50),
            ),
          ),
        ],
      ),
    );
  }
}
