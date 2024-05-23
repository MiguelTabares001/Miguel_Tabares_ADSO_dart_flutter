/* 
Crear un mapa de 10 elementos y 3 atributos.
Las keys (claves) son: Referencia, nombre, precio

Crear una screen para listar El nombre en el título 
y la referencia y precio en el subtitle

Sin realizar cambios en el mapa agregar en la lista 
el precio en dolares, es decir debe quedar el precio en pesos y dolares. 
*/

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ProductListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"Referencia": "001", "Nombre": "Momaso A", "Precio": 100000},
    {"Referencia": "002", "Nombre": "Momaso B", "Precio": 200000},
    {"Referencia": "003", "Nombre": "Momaso C", "Precio": 300000},
    {"Referencia": "004", "Nombre": "Momaso D", "Precio": 400000},
    {"Referencia": "005", "Nombre": "Momaso E", "Precio": 500000},
    {"Referencia": "006", "Nombre": "Momaso F", "Precio": 600000},
    {"Referencia": "007", "Nombre": "Momaso G", "Precio": 700000},
    {"Referencia": "008", "Nombre": "Momaso H", "Precio": 800000},
    {"Referencia": "009", "Nombre": "Momaso I", "Precio": 900000},
    {"Referencia": "010", "Nombre": "Momaso J", "Precio": 1000000},
  ];

  // Función para convertir pesos colombianos a dólares
  double convertirAPesosADolares(int precioEnPesos) {
    const double tasaDeCambio = 0.00027; // Tasa de cambio de ejemplo (1 COP = 0.00027 USD)
    return precioEnPesos * tasaDeCambio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
        backgroundColor: const Color.fromARGB(255, 248, 101, 91),
        ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final precioEnDolares = convertirAPesosADolares(item["Precio"]);
          return ListTile(
            title: Text(item["Nombre"]),
            subtitle: Text(
              'Referencia: ${item["Referencia"]} - Precio: \$${item["Precio"]} COP / \$${precioEnDolares.toStringAsFixed(2)} USD',
            ),
          );
        },
      ),
    );
  }
}
