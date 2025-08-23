/* Question 10
 Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.*/
void main() {
  Map<String, String> country = {
    'EG': 'Egypt',
    'SY': 'Syria',
  };
  print(country['EG']);
  country['QA'] = 'Qatar';
  print(country.length);
  if (country.containsKey('JO')) {
    print('yes');
  } else {
    print('jordan missing');
  }
}
