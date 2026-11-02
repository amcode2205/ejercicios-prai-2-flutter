import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_2_boton_cambia_texto/main.dart';

void main() {
  testWidgets('Muestra texto inicial', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Texto inicial'), findsOneWidget);
    expect(find.text('Cambiar Texto'), findsOneWidget);
  });
}
