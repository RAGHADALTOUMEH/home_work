import 'package:flutter/material.dart';
import '../models/task.dart';
import '../constants/app_colors.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const TaskCard({
    Key? key,
    required this.task,
    required this.onTap,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: AppColors.addTaskContainer,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        leading: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(
                color: task.isCompleted ? AppColors.accent : AppColors.divider,
                width: 2.0,
              ),
              color: task.isCompleted ? AppColors.accent : Colors.transparent,
            ),
            child: task.isCompleted
                ? const Icon(
                    Icons.check,
                    size: 16.0,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
        title: Text(
          task.title,
          style: TextStyle(
            fontSize: 17.0,
            color: task.isCompleted
                ? AppColors.textSecondary
                : AppColors.textPrimary,
            decoration: task.isCompleted ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            task.formattedDate,
            style: TextStyle(
              fontSize: 12.0,
              color: AppColors.textSecondary,
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: onDelete,
          icon: Icon(
            Icons.delete_outline,
            color: AppColors.deleteRed,
            size: 25.0,
          ),
        ),
      ),
    );
  }
}
