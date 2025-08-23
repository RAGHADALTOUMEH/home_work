/* Question 20
 Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
 have a parent. Use a switch statement on an area variable (general or restricted) to decide what
 message to print.*/
void main() {
  int age = 15;
  bool havefamily = true;
  String area = 'general';
  if (age < 18) {
    if (havefamily) {
      print('can you watch the film');
    } else {
      print('no watch');
    }
  } else {
    print('the age bigger than 18');
  }
  switch (area) {
    case 'general':
      print('varible is general');
      break;
    case 'local':
      print('varible is local');
      break;
    default:
      print("undefinded area");
  }
}
