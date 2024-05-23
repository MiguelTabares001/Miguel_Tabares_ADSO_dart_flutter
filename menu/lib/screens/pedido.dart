import 'package:flutter/material.dart';

void main() {
  runApp(const Pedido());
}

class Pedido extends StatelessWidget {
  // ignore: use_super_parameters
  const Pedido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pedidos',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const PedidoScreen(),
    );
  }
}

class PedidoScreen extends StatefulWidget {
  const PedidoScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PedidoScreenState createState() => _PedidoScreenState();
}

class _PedidoScreenState extends State<PedidoScreen> {
  List<String> productos = ['-- --', 'Meme Genérico', 'Chispos', 'Hackeo'];
  List<int> descuentos = [0, 5, 10, 15];
  String productoSeleccionado = '-- --';
  int descuentoSeleccionado = 0;
  int cantidad = 1;
  double precio = 0.0;
  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realiza Tu Pedido'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              value: productoSeleccionado,
              items: productos.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  productoSeleccionado = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Producto',
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<int>(
              value: descuentoSeleccionado,
              items: descuentos.map((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text('$value%'),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  descuentoSeleccionado = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Descuento',
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Cantidad'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  cantidad = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 10), 
            TextFormField(
              decoration: const InputDecoration(labelText: 'Precio'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  precio = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Calcula el total
                  total = cantidad * precio * (1 - descuentoSeleccionado / 100);
                });
              },
              child: const Text('Calcular Total'),
            ),
            const SizedBox(height: 10),
            Text(
              'Total: \$${total.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
