import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart';
import 'package:myapp/screens/Settings.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Test MyApp renders without error', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  });

  testWidgets('Test Settings screen renders without error', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Settings()));
    await tester.pumpAndSettle();
  });
}
