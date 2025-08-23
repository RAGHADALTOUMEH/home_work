/*Write a Dart program that reads environment variables from a map. If a value is null, replace it with
 a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
 conditions.*/
void main() {
  Map<String, String?> environment = {
    'version': '12',
    'path': null,
    'mode': 'true',
  };
  String replaceversion = environment['version'] ?? '10';
  String replacepath = environment['path'] ?? 'https';
  String replacemode = environment['mode'] ?? 'default';
  print(replaceversion.toUpperCase());
  print(replacepath.toUpperCase());
  print(replacemode.toUpperCase());
  if (replacemode == 'true') {
    print('prod ready');
  } else {
    print('non prod');
  }
}
