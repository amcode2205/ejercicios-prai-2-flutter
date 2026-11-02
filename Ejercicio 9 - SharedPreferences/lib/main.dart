import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ContadorLocal());
}

class ContadorLocal extends StatefulWidget {
  const ContadorLocal({super.key});

  @override
  State<ContadorLocal> createState() => _ContadorLocalState();
}

class _ContadorLocalState extends State<ContadorLocal> {
  int contador = 0;

  @override
  void initState() {
    super.initState();
    cargarContador();
  }

  Future<void> cargarContador() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      contador = prefs.getInt('contador') ?? 0;
    });
  }

  Future<void> incrementarContador() async {
    setState(() {
      contador++;
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('contador', contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contador Persistente'),
        ),
        body: Center(
          child: Text(
            'Valor: $contador',
            style: TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementarContador,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
