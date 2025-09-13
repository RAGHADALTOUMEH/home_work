class Temperature {
  double? celsius;

  Temperature(double celsius) {
    this.celsius = celsius;
  }

  double toFahrenheit() {
    return (celsius! * 9 / 5) + 32;
  }
}

void main() {
  Temperature temp = Temperature(25);
  print(temp.toFahrenheit());
}
