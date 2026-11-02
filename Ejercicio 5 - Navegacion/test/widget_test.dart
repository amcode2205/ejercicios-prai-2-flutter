import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_5_navegacion/main.dart';

void main() {
  testWidgets('Pantalla 1 visible', (tester) async {
    await tester.pumpWidget(const PrimeraPantalla());
    expect(find.text('Ir a Pantalla 2'), findsOneWidget);
  });
}
