import 'package:flutter/material.dart';

class EjemploArray extends StatefulWidget {
  const EjemploArray({super.key});

  @override
  State<EjemploArray> createState() => _EjemploArrayState();
}

final List<String> ambientes = ['701','702','703','704'];

class _EjemploArrayState extends State<EjemploArray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list_alt_outlined),
        title: const Text('Listado de Ambientes memeros'),
        backgroundColor: const Color.fromARGB(255, 248, 101, 91),
      ),
      body: ListView.builder(
        itemCount: ambientes.length, // Cantidad de elementos 
        itemBuilder: (BuildContext  context, int index) {
          return ListTile( // Generando las opciones del listView 
            title:Text(ambientes[index]),
            subtitle: Text(index.toString()),
          );
        }
        )
    );
  }
}

