/* Question 15
 Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
 '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
 safety where needed.*/
void main() {
  String? path = null;
  String cheakpath = path ?? 'no path ';
  print(cheakpath);
  path = '/profile';
  switch (path) {
    case '/profile':
      print('view profile');
      break;
    case '/products':
      print('view products');
      break;
    case '/home':
      print('view home page ');
      break;
    default:
      print('undefinded');
  }
  Map<String, String> profilepage = {
    'name': 'raghad',
    'email': 'eeerrrr777@gmail.com',
  };
  print(profilepage);
}
