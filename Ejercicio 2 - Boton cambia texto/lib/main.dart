import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mensaje = 'Texto inicial';

  void cambiarTexto() {
    setState(() {
      mensaje = 'Texto actualizado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cambio de Texto'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                mensaje,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: cambiarTexto,
                child: Text('Cambiar Texto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
