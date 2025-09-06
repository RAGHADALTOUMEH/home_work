/*Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also 
print the largest digit.*/
import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int max = 0;
  String strnum = num.toString();
  for (var item in strnum.split('')) {
    int n = int.parse(item);
    sum += n;
    if (n > max) max = n;
  }
  print('the sum = $sum');
  print('the max = $max');
}
