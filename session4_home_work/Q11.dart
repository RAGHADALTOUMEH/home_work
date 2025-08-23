/* Question 11
 Write a Dart program that applies discounts to a price. Use nested if/else to apply different
 discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
 Print the final price.*/
void main() {
  int price = 1000;
  bool iSStudent = true;
  bool isHaveCarbon = true;
  if (iSStudent) {
    price -= 150;
    print('the price = $price');
  }
  if (isHaveCarbon) {
    price -= 200;
    print('the price = $price');
  }
  if (price > 600) {
    price -= 100;
    print('the price = $price');
  }
  print('the price = $price');
}
