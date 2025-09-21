class Car {
  String _brand = '';
  int _year = 1886;
  String get brand => _brand;
  int get year => _year;

  set brand(String value) {
    if (value.isEmpty) {
      print('Invalid brand');
    } else {
      _brand = value;
    }
  }

  set year(int value) {
    if (value < 1886) {
      print('Invalid year');
    } else {
      _year = value;
    }
  }
}

void main() {
  Car car1 = Car();
  car1.brand = 'Toyota';
  car1.year = 2020;
  print(' ${car1.brand},${car1.year}');

  Car car2 = Car();
  car2.brand = '';
  car2.year = 1500;
  print(' ${car2.brand},${car2.year}');
}
