import 'package:flutter/material.dart';

class Conocimientos extends StatelessWidget {
  const Conocimientos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conocimientos'),
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text(
                    'Dart: Intermedio',
                    style: TextStyle(fontSize: 20),
                  ),
                  // Agregar acciones o más información aca
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text(
                    'JavaScript: Intermedio',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text(
                    'React: Intermedio',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
