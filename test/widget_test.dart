import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_task/main.dart';

void main() {
  testWidgets('Background change test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify that background color is white at start.
    expect(
      (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
      Colors.white,
    );

    // Tap on the screen.
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Verify that background color has changed.
    expect(
      (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor ==
          Colors.white,
      false,
    );
  });
}
