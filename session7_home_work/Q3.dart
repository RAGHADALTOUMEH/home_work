void main() {
  Person p1 = Person('raghad', 22);
  print(p1.name);
  print(p1.age);
  p1.age = 23;
  print(p1.age);
}

class Person {
  String? name;
  int? age;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
