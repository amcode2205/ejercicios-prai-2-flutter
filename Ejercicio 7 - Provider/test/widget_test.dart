import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:ejercicio_7_provider/main.dart';
import 'package:ejercicio_7_provider/contador.dart';

void main() {
  testWidgets('Muestra valor inicial 0', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => Contador(),
        child: const MyApp(),
      ),
    );
    expect(find.text('Valor: 0'), findsOneWidget);
  });
}
