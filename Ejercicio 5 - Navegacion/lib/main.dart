import 'package:flutter/material.dart';

void main() {
  runApp(PrimeraPantalla());
}

class PrimeraPantalla extends StatelessWidget {
  const PrimeraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pantalla 1'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return ElevatedButton(
                child: Text('Ir a Pantalla 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SegundaPantalla(),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Text('¡Hola desde la segunda pantalla!'),
      ),
    );
  }
}
