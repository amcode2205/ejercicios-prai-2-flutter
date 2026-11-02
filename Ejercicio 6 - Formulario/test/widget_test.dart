import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_6_formulario/main.dart';

void main() {
  testWidgets('Campos del formulario', (tester) async {
    await tester.pumpWidget(FormularioApp());
    expect(find.text('Nombre'), findsOneWidget);
    expect(find.text('Correo'), findsOneWidget);
    expect(find.text('Enviar'), findsOneWidget);
  });
}
