import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_10_prueba_widget/main.dart';

void main() {
  testWidgets('Texto inicial correcto', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('¡Hola, mundo!'), findsOneWidget);
  });
}
