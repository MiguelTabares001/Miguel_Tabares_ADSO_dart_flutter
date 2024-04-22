/* 
1. Realizar mediante funciones un programa que permita sumar, restar, multiplicar y dividir 2 números. Se le permite solicitar al usuario la operación a realizar y los 2 números.
*/

import 'dart:io';


void main() {
  // entrada de los numeros
  double num1 = double.parse(stdin.readLineSync()!);
  double num2 = double.parse(stdin.readLineSync()!);

  // menu para seleccionar la operacion
  print("Seleccione la operación que desea realizar:");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  int operacion = int.parse(stdin.readLineSync()!);

  // switch para la operacion en base a lo seleccionado
  double resultado;
  switch (operacion) {
    case 1:
      resultado = num1 + num2;
      break;
    case 2:
      resultado = num1 - num2;
      break;
    case 3:
      resultado = num1 * num2;
      break;
    case 4:
      if (num2 == 0) {
        print("Error: No se puede dividir por cero");
        return;
      }
      resultado = num1 / num2;
      break;
    default:
      print("Operación no válida");
      return;
  }

  // resultado
  print("El resultado de la operación es: $resultado");
}









