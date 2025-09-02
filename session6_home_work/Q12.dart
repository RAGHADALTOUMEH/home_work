/*Q12 
Create a function that takes named parameters firstName, lastName, and an optional named 
parameter age. Print the full name and, if age is provided, also print 'Age: X'.*/
void printPersonInfo(
    {required String firstName, required String lastName, int? age}) {
  print('Full name: $firstName $lastName');
  if (age != null) {
    print('Age: $age');
  }
}

void main() {
  printPersonInfo(firstName: 'raghad', lastName: 'altoumeh');
  printPersonInfo(firstName: 'maha', lastName: 'altoumeh', age: 35);
}
