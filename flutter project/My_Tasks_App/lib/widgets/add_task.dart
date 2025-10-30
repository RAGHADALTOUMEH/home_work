import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AddTaskField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const AddTaskField({
    Key? key,
    required this.controller,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 12.0, right: 8.0),
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: AppColors.addTaskContainer,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add a new task...',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 79, 79, 84),
                  fontSize: 16.0,
                ),
              ),
              onSubmitted: (value) => onAdd(),
            ),
          ),
        ),
        Container(
          width: 50.0,
          height: 50.0,
          margin: const EdgeInsets.only(right: 16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 226, 226, 232),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onAdd,
            icon: Icon(
              Icons.add,
              color: AppColors.textSecondary,
              size: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}
