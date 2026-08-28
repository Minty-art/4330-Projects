import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mini_app1/main.dart';

void main() {
  testWidgets('First name rating screen shows a name and rating options',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MiniApp1());

    // The first sample name should be visible.
    expect(find.text('Ava'), findsOneWidget);

    // Rating options 1 through 5 should be visible.
    for (var i = 1; i <= 5; i++) {
      expect(find.text('$i'), findsOneWidget);
    }

    // Tap rating "4" and confirm the Next button becomes enabled.
    await tester.tap(find.text('4'));
    await tester.pump();

    final nextButtonFinder = find.widgetWithText(FilledButton, 'Next');
    expect(nextButtonFinder, findsOneWidget);
    final button = tester.widget<FilledButton>(nextButtonFinder);
    expect(button.onPressed, isNotNull);
  });
}
