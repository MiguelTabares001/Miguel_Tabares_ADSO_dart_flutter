/*
Empleando future realizar un programa para emular la preparación de 1 huevo frito, 3 jugos y 1 café.
Observaciones: La preparación del huevo tarda: 12 segundos, la del jugo 8 segundos, la del café 15 segundos
*/

import 'dart:async';

Future<void> prepararHuevo() {
  return Future.delayed(Duration(seconds: 12), () {
    print('Huevo frito listo!');
  });
}

Future<void> prepararJugo(int cantidad) {
  return Future.delayed(Duration(seconds: 8), () {
    print('$cantidad jugo(s) listo(s)!');
  });
}

Future<void> prepararCafe() {
  return Future.delayed(Duration(seconds: 15), () {
    print('Café listo!');
  });
}

void main() {
  prepararHuevo();
  prepararJugo(3);
  prepararCafe();
  
  print('Iniciando preparación...');
}
