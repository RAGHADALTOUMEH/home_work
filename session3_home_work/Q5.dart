/*Exercise 5: 
5. a) Declare two integers a and b. 
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b. 
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result.*/
void main() {
  int a = 40;
  int b = 60;
  bool aIsEqualb = a == b;
  bool aIsNotEqualb = a != b;
  bool aIsBigb = a > b;
  bool aIsSmallb = a < b;
  bool aIsBigOrEqualb = a >= b;
  bool aIsSmallOrEqualb = a <= b;
  print(aIsEqualb);
  print(aIsNotEqualb);
  print(aIsBigb);
  print(aIsSmallb);
  print(aIsBigOrEqualb);
  print(aIsSmallOrEqualb);
  int sum = a + b;
  bool IsSum = sum == 20;
  print(IsSum);
}
