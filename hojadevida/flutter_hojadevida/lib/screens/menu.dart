import 'package:flutter/material.dart';
import 'infopersonal.dart';
import 'infoacademica.dart';
import 'conocimientos.dart';
import 'idiomas.dart';
import 'proyectos.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HV - Miguel Tabares'),
        backgroundColor: Color.fromARGB(255, 41, 233, 57),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
              height: 80,
              child: const DrawerHeader(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                // ignore: sort_child_properties_last
                child: Text(
                  'Hoja de Vida - MT',
                  style: TextStyle(color: Colors.white, fontSize: 23.5),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Información Personal'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoPersonal()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Información Académica'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InfoAcademica()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.lightbulb),
              title: const Text('Conocimientos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Conocimientos()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Idiomas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Idiomas()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_link),
              title: const Text('Proyectos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Proyectos()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 170,
                  backgroundImage: AssetImage('../assets/dioxd.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Esperabas una hoja de vida? Pues que mal... SOY YO DIO!',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
