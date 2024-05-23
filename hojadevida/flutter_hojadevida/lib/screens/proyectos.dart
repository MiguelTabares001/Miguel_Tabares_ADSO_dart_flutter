import 'package:flutter/material.dart';

class Proyectos extends StatelessWidget {
  const Proyectos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyectos'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: const Text(
                    'Proyecto 1: Calculadora en Java',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                  },
                ),
              ),
              const SizedBox(height: 10),
              Card(
                child: ListTile(
                  title: const Text(
                    'Proyecto 2: Sitio web de e-commerce',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
