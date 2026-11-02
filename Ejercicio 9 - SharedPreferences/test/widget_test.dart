import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ejercicio_9_shared_preferences/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Muestra valor inicial', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const ContadorLocal());
    await tester.pumpAndSettle();
    expect(find.text('Valor: 0'), findsOneWidget);
  });
}
