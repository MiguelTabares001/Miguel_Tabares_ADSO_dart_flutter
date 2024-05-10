//main.dart - numero de la suerte
import 'package:flutter/material.dart';
import 'screens/random_number_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Number Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RandomNumberPage(),
    );
  }
}
