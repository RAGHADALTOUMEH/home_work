import 'package:flutter_test/flutter_test.dart';
import 'package:first_project/main.dart';

void main() {
  testWidgets('BMI Calculator loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('BMI Calculator'), findsOneWidget);
  });
}
