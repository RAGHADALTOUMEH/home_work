import 'dart:io';

void main() {
  print('enter your text');
  String text = stdin.readLineSync()!;
  List<String> words = text.split(' ');
  int countword = words.length;
  print(countword);
  String largeword = words[0];
  String smallwowd = words[0];
  for (var item in words) {
    if (item.length > largeword.length) {
      largeword = item;
    }
    if (item.length < smallwowd.length) {
      smallwowd = item;
    }
  }
  print(largeword);
  print(smallwowd);
}
