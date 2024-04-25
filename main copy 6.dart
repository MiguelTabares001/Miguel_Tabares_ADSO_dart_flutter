/*
Crear un programa llamado "DibujarCuadradoNxN", que dibuje un cuadrado formado por N filas con N asteriscos cada uno.
*/


import 'dart:io';

void dibujarCuadradoNxN(int filas, int columnas) {
  for (int i = 0; i < filas; i++) {
    String fila = '';
    for (int j = 0; j < columnas; j++) {
      fila += '* ';
    }
    print(fila);
  }
}

void main() {
  print("Ingrese el número de filas:");
  var filas = int.tryParse(stdin.readLineSync() ?? '');
  if (filas == null || filas <= 0) {
    print("Número de filas inválido. Por favor, ingrese un número entero positivo.");
    return;
  }

  print("Ingrese el número de columnas:");
  var columnas = int.tryParse(stdin.readLineSync() ?? '');
  if (columnas == null || columnas <= 0) {
    print("Número de columnas inválido. Por favor, ingrese un número entero positivo.");
    return;
  }

  dibujarCuadradoNxN(filas, columnas);
}
