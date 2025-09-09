void main() {
  Car c1 = Car('BMW', 2019);
  print(c1.brand);
  print(c1.year);
  Car c2 = Car('rangrover', 2024);
  print(c2.brand);
  print(c2.year);
}

class Car {
  String? brand;
  int? year;
  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
