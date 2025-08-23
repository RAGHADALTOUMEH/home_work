/* Question 16
 Write a Dart program that evaluates three integer variables with different logical and comparison
 expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
 one of the expressions.*/
void main() {
  int a = 10;
  int b = 5;
  int c = 8;
  bool condation1 = (a > b) && (a > c);
  bool condition2 = (b >= a) || (c >= a);
  bool condation3 = (a != c) || (a >= c);
  print(condation1);
  print(condition2);
  print(condation3);
  if (condation1 && condation3) {
    print('rule passed');
  } else {
    print('rule failed');
  }
}
