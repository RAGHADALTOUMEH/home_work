class City {
  String? name;
  int? population;
  City(String name, int population) {
    this.name = name;
    this.population = population;
  }

  void printDetails() {
    print('City: $name, Population: $population');
  }
}

void main() {
  City city1 = City('Damascus', 2000000);
  City city2 = City('Aleppo', 1800000);

  city1.printDetails();
  city2.printDetails();
}
