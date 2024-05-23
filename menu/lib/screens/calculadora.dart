
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  String display = '';

  void onPressed(String value) {
    setState(() {
      if (value == 'C') {
        display = '';
      } else if (value == '=') {
        try {
          display = _eval(display).toString();
        } catch (e) {
          display = 'Error';
        }
      } else {
        display += value;
      }
    });
  }

  double _eval(String expression) {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate_outlined),
        title: const Text('Calculadora de Memos'),
        backgroundColor: const Color.fromARGB(255, 248, 101, 91),
      ), 
      backgroundColor: const Color.fromARGB(255, 248, 101, 91),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[200],
              alignment: Alignment.bottomRight,
              child: Text(
                display,
                style: const TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          const Divider(height: 1.0, color: Colors.black),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('7'),
              buildButton('8'),
              buildButton('9'),
              buildButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('4'),
              buildButton('5'),
              buildButton('6'),
              buildButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('1'),
              buildButton('2'),
              buildButton('3'),
              buildButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('0'),
              buildButton('.'),
              buildButton('C'),
              buildButton('+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton('='),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () => onPressed(text),
        child: Text(text, style: const TextStyle(fontSize: 20.0)),
      ),
    );
  }
}
