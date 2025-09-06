/*Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to 
10, then calculate the sum of all results.*/
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int multiple;
  List<int> sum = [];
  for (int i = 1; i <= 10; i++) {
    multiple = i * number;
    print('$i * $number = $multiple');
    sum.add(multiple);
  }
  int s = 0;
  for (var item in sum) {
    s += item;
  }
  print('the sum = $s');
}
