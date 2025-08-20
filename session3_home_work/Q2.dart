/*VExercise 2: 
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values. 
b) Print a sentence that includes all values using string interpolation. 
c) Change weight to a different value and print only the updated one.*/
void main() {
  String country = "syria";
  int year = 2003;
  double weight = 56.4;
  bool likeCoding = true;
  print('I am from $country');
  print('my weight $weight');
  print('my year $year');
  print('$likeCoding I like coding');
  print(
      'I am from $country and my weight $weight and my year $year and $likeCoding I like coding');
  weight = 55.5;
  print('my weight $weight');
}
