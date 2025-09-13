class Course {
  String? title;
  int? duration = 3;

  void printDetails() {
    print('Course: $title, Duration: $duration months');
  }
}

void main() {
  Course course1 = Course();
  Course course2 = Course();
  course1.title = 'flutter';
  course1.duration = 6;
  course2.title = 'dart';
  course1.printDetails();
  course2.printDetails();
}
