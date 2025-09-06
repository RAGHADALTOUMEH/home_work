/*Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user 
guess up to 3 times. If they fail, reveal the correct number.*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int n = random.nextInt(20) + 1;
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  int n3 = int.parse(stdin.readLineSync()!);
  if (n == n1) {
    print('match');
  } else if (n2 == n) {
    print('match');
  } else if (n3 == n) {
    print('match');
  } else {
    print(n);
  }
}
