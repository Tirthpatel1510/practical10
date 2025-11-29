import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app/main.dart';

void main() {
  testWidgets('Notes app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // Verify that the app title is displayed
    expect(find.text('My Notes'), findsOneWidget);
    
    // Verify that the empty state is shown initially
    expect(find.text('No Notes Yet'), findsOneWidget);
    
    // Verify that the FAB is present
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}