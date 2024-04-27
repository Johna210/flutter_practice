// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:basics/main.dart';

void main() {
  testWidgets('My Widget has a title and message', (widgetTester) async {
    await widgetTester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    // Create Finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    // Use the `findsOneWidget` matcher provided by flutter_test to verify
    // that the Text widgets appear exactly once in the widget tree.

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
