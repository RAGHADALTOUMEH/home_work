/*Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest 
numbers, and then calculate the difference between them.*/
import 'dart:io';

void main() {
  int? number;
  int sub;
  dynamic max1;
  dynamic min1;
  List<int> num = [];
  for (int i = 0; i < 5; i++) {
    number = int.parse(stdin.readLineSync()!);
    num.add(number);
  }
  max1 = num[0];
  min1 = num[0];
  for (var n in num) {
    if (n > max1) max1 = n;
    if (n < min1) min1 = n;
  }
  print('the max $max1');
  print('the min $min1');
  sub = max1 - min1;
  print(sub);
}
