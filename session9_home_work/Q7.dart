import 'dart:io';

void main() {
  print('أدخل أعداد صحيحة:');
  List<int> numbers =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  int maxNum = numbers.reduce((a, b) => a > b ? a : b);
  int minNum = numbers.reduce((a, b) => a < b ? a : b);
  int difference = maxNum - minNum;

  print('أكبر عدد: $maxNum');
  print('أصغر عدد: $minNum');
  print('الفرق بينهما: $difference');
  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print('المتوسط: $average');

  for (var n in numbers) {
    if (n > average) print(n);
  }

  int evenCount = numbers.where((n) => n % 2 == 0).length;
  int oddCount = numbers.length - evenCount;

  print('عدد الأعداد الزوجية: $evenCount');
  print('عدد الأعداد الفردية: $oddCount');
}
