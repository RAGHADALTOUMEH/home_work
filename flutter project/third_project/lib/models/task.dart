class Task {
  final String id;
  final String title;
  final DateTime createdAt;
  bool isCompleted;

  Task({
    required this.id,
    required this.title,
    required this.createdAt,
    this.isCompleted = false,
  });

  String get formattedDate {
    return 'Created: ${createdAt.day}/${createdAt.month}/${createdAt.year}';
  }
}
