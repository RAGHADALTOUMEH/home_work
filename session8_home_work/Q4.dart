class Employee {
  String? name;
  double salary = 0;

  Employee(String name, double salary) {
    this.name = name;
    this.salary = salary;
  }

  void giveRaise(double amount) {
    salary += amount;
  }
}

void main() {
  Employee e1 = Employee('Raghad', 1500);
  e1.giveRaise(500);
  print(e1.name);
  print(e1.salary);
}
