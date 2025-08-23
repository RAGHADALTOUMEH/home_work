/* Question 12
 Create a Dart program that safely reads a phone number from a map. If the phone number is null,
 print a default message. Then update the phone number and print its length.*/
void main() {
  Map<String, String?> phone = {
    'raghad': '09875604',
    'tasneem': null,
  };
  String numphone = phone['tasneem'] ?? 'no phone';
  print(numphone);
  String update = phone['tasneem'] = '0934528756';
  print(update.length);
}
