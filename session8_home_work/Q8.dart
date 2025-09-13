import 'dart:io';

void main() {
  print('enter text');
  String sentence = stdin.readLineSync()!;

  if (sentence != null) {
    List<String> words = sentence.split(' ');
    List<String> uniqueWords = [];

    for (var word in words) {
      if (words.where((w) => w == word).length == 1) {
        uniqueWords.add(word);
      }
    }

    print(uniqueWords);
    print(uniqueWords.length);
  }
}
