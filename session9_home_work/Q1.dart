class BankAccount {
  double _balance = 0;
  double get balance => _balance;
  set balance(double value) {
    if (value < 0) {
      print('Invalid balance');
    } else {
      _balance = value;
    }
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.balance = 500;
  print('${acc.balance}');

  acc.balance = -100;
  print(' ${acc.balance}');
}
