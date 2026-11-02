import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_1_hola_mundo/main.dart';

void main() {
  testWidgets('Texto inicial correcto', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('¡Hola, mundo!'), findsOneWidget);
  });
}
