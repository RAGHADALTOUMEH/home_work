/*8. Write a Dart program that declares two numeric variables and performs addition, subtraction, 
multiplication, division, and modulo on them. Print each result.*/
void main() {
  int number1 = 10;
  int number2 = 3;
  int addition = number1 + number2;
  int subtraction = number1 - number2;
  int multiplication = number1 * number2;
  double division = number1 / number2;
  int modulo = number1 % number2;
  print('addition $addition ');
  print('subtraction $number1 - $number2 = $subtraction');
  print('multiplication $number1 * $number2 = $multiplication');
  print('division $number1 / $number2 = $division');
  print('modulo $number1 % $number2 = $modulo');
}
