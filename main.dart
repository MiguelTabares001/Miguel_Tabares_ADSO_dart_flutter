/* 

import 'dart:io';
void main (){
/*print("Tipos De Datos 1");
  String empresa = "SENA";
  int cantidadAprendices = 20;
  double temperaturaPromedio = 33.3;
  bool estado = true;
  final ambiente = 703;
  
  print("La empresa es  ${empresa} tiene ${cantidadAprendices} aprendices y \n la temperatura promedio es: ${temperaturaPromedio}");

  if (estado){
    print("Hay formacion en $ambiente");
  }
  else{
    print("No hay formacion");
  }

*/
/*print("Tipos De Datos 2");
  String? nombre = null;

  if(nombre == null){
    print("Ingrese el nombre");
  }
  else{
    print("Nombre ingresado");
  }
  */

//Ciclos
 /*for (int i = 0; i < 100; i++){
  print (i);
 }*/
/*bool bandera = true;
while(bandera){
  print("acceder");
}*/

//Solicitar n numeros por teclado
// Calcular máximo valor , minimo valor, cantidad de positivos, cantidad de negativos, promedio positivos.
 // Solicitamos al usuario la cantidad de números que ingresará:
  /*stdout.write('Ingresa la cantidad de números: ');
  int cantidadNumeros = int.parse(stdin.readLineSync()!);

  // Inicializamos las variables para los cálculos:
  double maximo = double.negativeInfinity;
  double minimo = double.infinity;
  int cantidadPositivos = 0;
  int cantidadNegativos = 0;
  double sumaPositivos = 0.0;

  // Solicitamos al usuario ingresar los números:
  for (int i = 0; i < cantidadNumeros; i++) {
    stdout.write('Ingresa el número ${i + 1}: ');
    double numero = double.parse(stdin.readLineSync()!);

    if (numero > maximo) {
      maximo = numero;
    }
    if (numero < minimo) {
      minimo = numero;
    }
    if (numero > 0) {
      cantidadPositivos++;
      sumaPositivos += numero;
    } else if (numero < 0) {
      cantidadNegativos++;
    }
  }

  // Calculamos el promedio de los valores positivos:
  double promedioPositivos = sumaPositivos / cantidadPositivos;

  // Mostramos los resultados:
  print('Máximo valor: $maximo');
  print('Mínimo valor: $minimo');
  print('Cantidad de números positivos: $cantidadPositivos');
  print('Cantidad de números negativos: $cantidadNegativos');
  print('Promedio de valores positivos: $promedioPositivos');
  */

  /*
  List<int> edades = [12,13,14,16,17,18,19];
  print(edades);
  edades.add(43);
  print("cantidad de elementos de la lista: ${edades.length}");
  //Contar cuántos son mayores de edad
  int contadorMayores = 0;
  for ( int i = 0; i < edades.length; i++){
    if (edades[i] >= 18 ){
      contadorMayores++;
    }
  }
  print("Los mayores de edad son: ${contadorMayores}");
  print("Edades sin ordenar: ${edades}");
  edades.sort();
  print(edades.elementAt(3));
  print(edades.first);
  edades.removeAt(0); //Elimina un elemento
  print("Las edades ordenas son: ${edades}");
  */
 

  /* 
  Realizar un programa en dart que permita solicitar el nombre y genero de N personas y luego almacene en una listaM los de genero M y en una listaF los de genero F

  Cargar al repo de git y compartirlo al e-mail: dilopezz@sena.edu.co
  */
  
  // Definicion de variables
  
  int cantidadPersonas;
  String nombre, genero;
  List<String> listaM = []; // Lista para nombres masculinos
  List<String> listaF = []; // Lista para nombres femeninos

  // Aqui solicito la cantidad de personas
  print("¿Cuántas personas desea registrar?");
  cantidadPersonas = int.parse(stdin.readLineSync()!);

  // Este es el bucle para registrar personas
  for (int i = 0; i < cantidadPersonas; i++) {
    print("Persona ${i + 1}:");
    print("Nombre: ");
    nombre = stdin.readLineSync()!;
    print("Género (M/F): ");
    genero = stdin.readLineSync()!.toUpperCase();

    // Aqui se almacenan los nombres según el género
    if (genero == "M") {
      listaM.add(nombre);
    } else if (genero == "F") {
      listaF.add(nombre);
    } else {
      print("Género no válido. Se omitirá el registro.");
    }
  }

  // Finalmente mostramos las listas por género
  print("\nLista de nombres masculinos:");
  for (String nombre in listaM) {
    print(nombre);
  }

  print("\nLista de nombres femeninos:");
  for (String nombre in listaF) {
    print(nombre);
  }

}


*/






