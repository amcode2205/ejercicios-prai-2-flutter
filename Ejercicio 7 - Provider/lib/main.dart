import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contador.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Contador(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Center(
          child: Consumer<Contador>(
            builder: (context, contador, child) => Text(
              'Valor: ${contador.valor}',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<Contador>().incrementar(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
