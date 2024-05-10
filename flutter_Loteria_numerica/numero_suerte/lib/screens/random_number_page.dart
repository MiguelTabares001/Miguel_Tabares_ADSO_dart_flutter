import 'package:flutter/material.dart';
import 'dart:math';

class RandomNumberPage extends StatefulWidget {
  const RandomNumberPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomNumberPageState createState() => _RandomNumberPageState();
}

class _RandomNumberPageState extends State<RandomNumberPage> {
  int randomNumber = 0;
  String selectedLoteria = '';

  List<String> loterias = ['Medellín', 'Risaralda', 'Santander'];

  void generateRandomNumber() {
    setState(() {
      randomNumber = Random().nextInt(1000);
      selectedLoteria = loterias[Random().nextInt(loterias.length)];
    });
  }

  String formatNumber(int number) {
    if (number < 100) {
      return number.toString().padLeft(3, '0');
    } else {
      return number.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generador de Números Aleatorios xd', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.yellow,
        leading: const Icon(Icons.star , color: Colors.black, size: 50,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '¡Número De la Suerte!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              formatNumber(randomNumber),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Lotería: $selectedLoteria',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: generateRandomNumber,
              tooltip: 'Generar número',
              // ignore: sort_child_properties_last
              child: const Icon(Icons.refresh),
              backgroundColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
