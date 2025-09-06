/*Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains 
and how many characters (excluding spaces).*/
import 'dart:io';

void main() {
  String text = stdin.readLineSync()!;
  List<String> t = text.split(' ');
  int cword = t.length;
  print('the word = $cword');
  int alp = text.replaceAll(' ', '').length;
  print('the alp $alp');
}
