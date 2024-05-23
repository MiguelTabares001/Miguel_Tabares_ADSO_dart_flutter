import 'package:flutter/material.dart';

class InfoPersonal extends StatelessWidget {
  const InfoPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información Personal'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('../assets/perfil.jpg'), //poner imagen de dio aqui xd
            ),
            SizedBox(height: 20),
            Text(
              'Nombre: Miguel Ángel Tabares Cano',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Correo: migueloangelo@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Celular: 3029301933',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Edad: 17 años',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
