import 'package:flutter/material.dart';
import 'package:menu/screens/calculadora.dart';
import 'package:menu/screens/link1.dart';
import 'package:menu/screens/link2.dart';
import 'package:menu/screens/rectangulo.dart';
import 'package:menu/screens/array.dart';
import 'package:menu/screens/mapa.dart';
import 'package:menu/screens/pedido.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.group),
        title: const Text('Momasos Galery - Menu'),
        backgroundColor: const Color.fromARGB(255, 248, 101, 91),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Link 1'),
            subtitle: const Text('Momasos de SDLG'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const Link1() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('Link 2'),
            subtitle: const Text('Momasos de legión Holk'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const Link2() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.rectangle_outlined),
            title: const Text('Rectangulo'),
            subtitle: const Text('Momasos de Momasos Cuadriculineos'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const Rectangulo() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.calculate_rounded),
            title: const Text('Calculadora'),
            subtitle: const Text('Calculadora de Momos'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const CalculadoraScreen() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_outlined),
            title: const Text('Listado de Ambientes'),
            subtitle: const Text('Ambientes de desarrollo memero'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const EjemploArray() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.map_outlined),
            title: const Text('Mapeo de Productos'),
            subtitle: const Text('Productos de desarrollo memero'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => ProductListScreen() );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop_sharp),
            title: const Text('Pedidos de Pro'),
            subtitle: const Text('Los mejores Pedidos :v'),
            trailing: const Icon(Icons.navigate_next_outlined),
            onTap:() {
              final route = MaterialPageRoute(
              builder: (context) => const PedidoScreen() );
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}