import 'dart:io';

void main() {
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  while (number > 9) {
    number = number.toString().split('').map(int.parse).reduce((a, b) => a + b);
  }

  print('The single-digit result is: $number');
}
