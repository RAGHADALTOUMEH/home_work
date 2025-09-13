class NumberCheck {
  int? value;

  NumberCheck(int value) {
    this.value = value;
  }

  bool isEven() {
    return value! % 2 == 0;
  }
}

void main() {
  NumberCheck number = NumberCheck(10);

  if (number.isEven()) {
    print('${number.value} is even');
  } else {
    print('${number.value} is odd');
  }
}
