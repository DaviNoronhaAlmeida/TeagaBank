import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Não existe', (WidgetTester tester) async {
    await tester.pumpAndSettle();
    expect(find.text('afdsfsdfs'), findsNothing);
  });
}
