/*9. Create a new Dart file. At the top, write a multi-line comment explaining your program. Inside the 
file, write simple code with proper indentation and single line comments.*/

/*أنا عندي نوعين من أنواع المتغيرات فما فيني اطبع متغير النصي مع متغير العدد الصحيح بالطريقة هاي لان رح يعطي خطأ 
print('the name is' + name + 'and age is ' + age )
الطباعة الصحيحة جربتا في البروجكت
*/

void main() {
  String name = 'rama'; //متغير يمثل الاسم
  int age = 20; // متغير يمثل الغمر
  print('the name is $name and age is $age'); // طباعة
  print('the name is ' + name + ' and age is ' + age.toString());
}
