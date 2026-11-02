import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> obtenerUsuarios() async {
  final res = await http.get(Uri.parse('https://reqres.in/api/users'));
  final data = json.decode(res.body);
  return data['data'];
}

void main() {
  runApp(ApiUsuarios());
}

class ApiUsuarios extends StatelessWidget {
  const ApiUsuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Usuarios API'),
        ),
        body: FutureBuilder(
          future: obtenerUsuarios(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final usuarios = snapshot.data as List;
              return ListView.builder(
                itemCount: usuarios.length,
                itemBuilder: (context, index) {
                  final user = usuarios[index];
                  return ListTile(
                    title: Text('${user['first_name']} ${user['last_name']}'),
                    subtitle: Text(user['email']),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user['avatar']),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
