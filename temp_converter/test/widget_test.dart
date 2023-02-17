// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:temp_converter/main.dart';
import 'package:temp_converter/about.dart';

void main() {
  testWidgets('MyHomePage should display correct initial text',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    expect(find.text('Enter a temp'), findsOneWidget);

    // Accessibility
    expect(tester, meetsGuideline(textContrastGuideline));
    expect(tester, meetsGuideline(androidTapTargetGuideline));
  });

  testWidgets('MyHomePage should update temp when text input changes',
      (WidgetTester tester) async {
    // init app
    await tester.pumpWidget(const MyApp());
    // enter 32 F
    final inputTextField = find.byType(TextField);
    await tester.enterText(inputTextField, '32');
    await tester.pump();
    // Should get 0.0 C
    expect(find.text("0.0°C"), findsOneWidget);
  });

  testWidgets('MyHomePage should update temp when switching between C and F',
      (WidgetTester tester) async {
    // init app
    await tester.pumpWidget(const MyApp());
    final switchWidget = find.byType(Switch);
    final inputTextField = find.byType(TextField);

    await tester.enterText(inputTextField, '32');
    await tester.pump();
    // Should get 0.0 C
    expect(find.text("0.0°C"), findsOneWidget);
    // tap switch
    await tester.tap(switchWidget);
    await tester.pump();
    // 32C = 89.6F
    expect(find.text("89.6°F"), findsOneWidget);
  });

  testWidgets('AboutPage redirect', (WidgetTester tester) async {
    // init app
    await tester.pumpWidget(const MyApp());
    // Verify that the button is rendered on the screen
    expect(find.text('About Temp Converter'), findsOneWidget);
    // tap
    await tester.tap(find.text('About Temp Converter'));
    await tester.pumpAndSettle();
    expect(find.byType(AboutPage), findsOneWidget);

    expect(find.text('Go back'), findsOneWidget);
    // tap
    await tester.tap(find.text('Go back'));
    await tester.pumpAndSettle();
    expect(find.byType(MyHomePage), findsOneWidget);
  });
}
