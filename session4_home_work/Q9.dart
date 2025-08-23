/*Question 9
 Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
 count with the original list length and print a message if duplicates were removed.*/
void main() {
  List<int> numbers = [4, 8, 7, 4, 5, 9, 5];
  int lengthOriginalList = numbers.length;
  Set<int> numbersunique = numbers.toSet();
  int lengthUniqueSet = numbersunique.length;
  print(numbers);
  print(numbersunique);
  if (lengthOriginalList > lengthUniqueSet) {
    print('duplicates were removed');
  } else {
    print('no duplicates');
  }
}
