import 'package:flutter/material.dart';

class InfoAcademica extends StatelessWidget {
  const InfoAcademica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información Académica'),
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
                    'Institución Educativa: I.E San Cristobal - Bachiller',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: Text(
                    'Carrera: Tecnología en Análisis y Desarrollo de Software',
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
