/*Question 14
 Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
 scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
 greater than or equal to 40.*/
void main() {
  List<int>? numbers = [6, 8, 4, 3, 7];
  if (numbers == null || numbers.isEmpty) {
    print('No scores');
  } else {
    int sum = numbers.first + numbers.last;
    //sum = numbers[0]! + numbers[4]!
    print('the sum = $sum');
    if (sum >= 40) {
      print('biger than 40');
    }
  }
}
