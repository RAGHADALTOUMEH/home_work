/*Q4 
Create a program with a map of student names to their marks. Print the name of the student with 
the highest mark.*/
void main() {
  Map<String, dynamic> students = {'raghah': 90, 'tasnim': 92, 'shahed': 90};
  int highastmark = 0;
  for (var i in students.values) {
    if (i > highastmark) {
      highastmark = i;
    }
  }
  print(highastmark);
}
