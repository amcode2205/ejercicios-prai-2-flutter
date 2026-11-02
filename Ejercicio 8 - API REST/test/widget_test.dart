import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_8_api_rest/main.dart';

void main() {
  testWidgets('Muestra titulo Usuarios API', (tester) async {
    await tester.pumpWidget(const ApiUsuarios());
    expect(find.text('Usuarios API'), findsOneWidget);
  });
}
