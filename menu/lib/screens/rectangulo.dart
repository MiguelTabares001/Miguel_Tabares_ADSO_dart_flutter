import 'package:flutter/material.dart';

class Rectangulo extends StatefulWidget {
  const Rectangulo({super.key});

  @override
  State<Rectangulo> createState() => _RectanguloState();
}

class _RectanguloState extends State<Rectangulo> {
  //Controladores para cajas de texto
  TextEditingController largoController = TextEditingController();
  TextEditingController anchoController = TextEditingController();

  String resultado = '';
  final List<String> unidadMedida = ['M', 'CM', 'KM'];
  String? valorSeleccionado;

  void calcularArea(){
    try{
      double largo = double.parse(largoController.text);
      double ancho = double.parse(anchoController.text);
      double area = largo * ancho;
      resultado = (area.toString());
      setState(() {// Actualizar las variables en el screen

      });
    }
    catch(e){
      resultado = e.toString();
    }
  }

  void calcularPerimetro(){
    try{
      double largo = double.parse(largoController.text);
      double ancho = double.parse(anchoController.text);
      double perimetro = 2 * (largo + ancho);
      resultado = (perimetro.toString());
      setState(() { //Actuliza las variables en resultado
      });
    }
    catch(e){
      resultado = e.toString();
    }
  }
    
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rectangulo'),
        leading: const Icon(Icons.rectangle_outlined),
        backgroundColor: const Color.fromARGB(255, 248, 101, 91),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 400,
          child: Column(
            children: [
              
             DropdownButton<String>(
                hint: const Text('Seleccione una de unidad de medida'), // especificar lo que debe hacer el dropdown
                 value : valorSeleccionado,
                onChanged: (String? nuevoValor) { 
                  setState(() {
                    valorSeleccionado = nuevoValor;
                  });
                 },
                items: unidadMedida.map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value) 
                      );
                  }).toList() 
              ),
              

              TextField(
                controller: largoController,
                decoration: const InputDecoration(
                    labelText: 'Largo',
                    labelStyle: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)), //Decoration
                keyboardType: TextInputType.number, // Tipo de teclado
                maxLength: 5,
                  style: const TextStyle(color: Colors.red),

              ),
              TextField(
                controller: anchoController,// Controlador de la caja de texto
                decoration: const InputDecoration(
                    labelText: 'Ancho',
                    labelStyle: TextStyle(fontWeight:FontWeight.bold, color: Colors.black)),
                keyboardType: TextInputType.number, // Tipo de teclado
                maxLength: 5,
                style: const TextStyle(color: Colors.red),
              ),
              ElevatedButton(onPressed: () {
                calcularArea();
              }, child: const Text('Calcular Área')),
              const SizedBox(height: 10),
              
              ElevatedButton(onPressed: () {
                calcularPerimetro();
              }, child: const Text('Calcular Perímetro')),
              const SizedBox(height: 10),
              Text('Resultado: $resultado $valorSeleccionado')
            ],
          ),
        ),
      ),
    );
  }
}
