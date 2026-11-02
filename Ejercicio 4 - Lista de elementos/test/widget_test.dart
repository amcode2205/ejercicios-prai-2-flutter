import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_4_lista/main.dart';

void main() {
  testWidgets('Muestra nombres', (tester) async {
    await tester.pumpWidget(ListaNombres());
    expect(find.text('Ana'), findsOneWidget);
    expect(find.text('Sofía'), findsOneWidget);
  });
}
