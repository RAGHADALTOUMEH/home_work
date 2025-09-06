/*Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also 
count how many vowels it has.*/
import 'dart:io';

void main() {
  String word = stdin.readLineSync()!;
  int count = 0;
  print(word.split('')!.reversed.join());
  List<String> alp = ['a', 'o', 'u', 'e', 'i'];
  for (var item in word.toLowerCase().split('')) {
    if (alp.contains(item)) {
      count++;
    }
  }
  print(count);
}
