/* Question 17
 Write a Dart program that formats a price tag string with a currency. Apply string methods such as
 toString, padLeft, and length to format and compare the results*/
void main() {
  int price = 100;
  String currency = "\$";
  String pricestr = (price.toString() + currency);
  String result = "200\$";
  print('the prise a string $pricestr');
  print(pricestr.length);
  print(pricestr.padLeft(10, '*'));
  bool iSmatch = result == pricestr;
  print(iSmatch);
}
