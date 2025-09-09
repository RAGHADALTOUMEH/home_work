void main() {
  Calculator c1 = Calculator();
  c1.addNumbers();
}

class Calculator {
  int num1 = 10;
  int num2 = 5;
  void addNumbers() {
    print(num1 + num2);
  }
}
