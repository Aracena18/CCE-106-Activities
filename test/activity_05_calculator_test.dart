import 'package:cce_106_activities/activities/activity_05_calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('calculator displays controls and calculates addition', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Calculator(),
      ),
    );

    expect(find.text('ARACENA Activity 5'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('÷'), findsOneWidget);

    await tester.enterText(find.byType(TextField).at(0), '10');
    await tester.enterText(find.byType(TextField).at(1), '5');
    await tester.tap(find.text('+'));
    await tester.pump();

    expect(find.text('Result: 15.00'), findsOneWidget);
  });
}
