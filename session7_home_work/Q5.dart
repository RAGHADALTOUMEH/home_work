import 'dart:io';

void main() {
  int num;
  List<int> numbers = [];
  for (int i = 0; i < 6; i++) {
    print('enter number');
    num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  numbers.sort(
    (a, b) => b.compareTo(a),
  );
  print(numbers[0]);
  print(numbers[1]);
}
