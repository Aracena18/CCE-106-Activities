// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:cce_106_activities/main.dart';

void main() {
  testWidgets('Activity hub shows all activity links',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('CCE-106 Activities'), findsOneWidget);
    expect(find.text('Task 1 - PAVLOVA'), findsOneWidget);
    expect(find.text('Task 2 - EdgeInsets'), findsOneWidget);
    expect(find.text('Task 3 - Main_Cross_Alignment'), findsOneWidget);
    expect(find.text('Task 4 - LoginRegister'), findsOneWidget);
  });

  testWidgets('Task 3 keeps labels inside its alignment boxes',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.tap(find.text('Task 3 - Main_Cross_Alignment'));
    await tester.pumpAndSettle();

    expect(find.text('Red Box'), findsOneWidget);
    expect(find.text('Green Box'), findsOneWidget);
    expect(find.text('Blue Box'), findsOneWidget);
  });
}
