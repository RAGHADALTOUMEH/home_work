/*Question 19
 Write a Dart program that converts a list of names to a set of unique values. Create a map with
 counts of occurrences. Compare lengths and print a message if a specific name appears more than
 once.*/
void main() {
  List<String> names = ['raghad', 'shahd', 'tasneem', 'shahd'];
  Set<String> namesunique = names.toSet();
  int lengthList = names.length;
  int lengthSet = namesunique.length;
  Map<String, int?> namecount = {
    'raghad': 1,
    'shahed': 2,
    'tasneem': 1,
  };
  if (namecount['raghad']! > 1) {
    print('raghad duplicates');
  }
  if (namecount['shahd']! > 1) {
    print('shahd duplicates');
  }
  if (namecount['tasneem']! > 1) {
    print('tasneem duplicates');
  }
  if (lengthList > lengthSet) {
    print('the duplicates removed');
  } else {
    print('non duplicates');
  }
}
