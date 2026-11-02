import 'package:flutter/material.dart';

void main() {
  runApp(ListaNombres());
}

class ListaNombres extends StatelessWidget {
  ListaNombres({super.key});

  final List<String> nombres = ['Ana', 'Luis', 'Pedro', 'Sofía'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Nombres'),
        ),
        body: ListView.builder(
          itemCount: nombres.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(nombres[index]),
            );
          },
        ),
      ),
    );
  }
}
