import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:e_commerce_app/main.dart';
// If MyApp is not defined in main.dart, import it directly from its file:
// import 'package:e_commerce_app/src/my_app.dart'; // Update the path as needed

void main() {
  testWidgets('App should load HomePage with title', (WidgetTester tester) async {
    // Build our app
    await tester.pumpWidget(const MyApp());

    // Verify that HomePage title or first widget exists
    expect(find.text('E-Commerce App'), findsOneWidget);
  });

  testWidgets('Bottom navigation bar exists', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify bottom navigation bar is there
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });

  testWidgets('Products list should appear', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify at least one product card/list item exists
    expect(find.byType(Card), findsWidgets);
  });
}
