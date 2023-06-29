import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login screen tests', () {
    testWidgets('teste de termos', (WidgetTester tester) async {
      await tester.pumpAndSettle();
      final terms = find.byKey(const Key('terms'));
      expect(terms, findsOneWidget);
    });
  });
}
