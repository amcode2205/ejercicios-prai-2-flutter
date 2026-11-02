import 'package:flutter_test/flutter_test.dart';
import 'package:ejercicio_3_contador/main.dart';

void main() {
  testWidgets('Contador inicia en 0', (tester) async {
    await tester.pumpWidget(const ContadorApp());
    expect(find.text('Contador: 0'), findsOneWidget);
  });
}
