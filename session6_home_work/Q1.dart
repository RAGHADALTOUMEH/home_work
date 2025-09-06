/*Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average. 
Then, check if the average is greater than 50 or not.*/
import 'dart:io';

void main() {
  int number;
  int sum = 0;
  double average;
  int count = 0;
  for (int i = 0; i < 3; i++) {
    print('enter your num');
    number = int.parse(stdin.readLineSync()!);
    sum += number;
    count++;
  }
  print(sum);
  average = sum / count;
  print(average);
}
