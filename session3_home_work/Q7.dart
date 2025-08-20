/*Exercise 7: 
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it. 
c) Use add(), remove(), and contains() with the set, printing each result.*/
void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> number = numbers.toSet();
  print(numbers);
  print(number);
  number.add(8);
  print(number);
  number.remove(4);
  print(number);
  bool x = number.contains(5);
  print(x);
}
