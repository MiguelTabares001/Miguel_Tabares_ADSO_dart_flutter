/*
Taller en clase de dart
*/


import 'dart:io';

import 'dart:math';

class Aprendiz {
  String documento;
  String nombreCompleto;
  int inasistencias;

  Aprendiz(this.documento, this.nombreCompleto, this.inasistencias);
}

class Venta {
  String codigo;
  String nombre;
  double precio;
  int cantidad;

  Venta(this.codigo, this.nombre, this.precio, this.cantidad);

  double calcularValorPagar() {
    if (precio <= 0 || cantidad <= 0) {
      throw Exception("El precio y la cantidad deben ser mayores que 0.");
    }

    double valorBruto = precio * cantidad;
    double descuento = cantidad > 10 ? valorBruto * 0.1 : 0;
    double valorIva = valorBruto * 0.19;

    return valorBruto + valorIva - descuento;
  }
}

void main() {
  var aprendices = <Aprendiz>[];
  var ventas = <Venta>[];

  while (true) {
    print("\nMenú:");
    print("1. Registrar inasistencias");
    print("2. Listar todas las inasistencias");
    print("3. Listar los aprendices con inasistencias superiores a 3");
    print("4. Consultar el total de inasistencias por aprendiz");
    print("5. Valor a pagar");
    print("6. Número de suerte");
    print("7. Salir");

    var opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        registrarInasistencias(aprendices);
        break;
      case 2:
        listarInasistencias(aprendices);
        break;
      case 3:
        listarInasistenciasSuperioresTres(aprendices);
        break;
      case 4:
        consultarTotalInasistencias(aprendices);
        break;
      case 5:
        calcularValorPagar(ventas);
        break;
      case 6:
        generarNumeroSuerte();
        break;
      case 7:
        return;
      default:
        print("Opción no válida. Por favor, elija una opción del menú.");
    }
  }
}

void registrarInasistencias(List<Aprendiz> aprendices) {
  print("Ingrese el documento del aprendiz:");
  var documento = stdin.readLineSync()!;
  print("Ingrese el nombre completo del aprendiz:");
  var nombreCompleto = stdin.readLineSync()!;
  print("Ingrese la cantidad de inasistencias (entre 1 y 100):");
  var inasistencias = int.parse(stdin.readLineSync()!);

  if (inasistencias < 1 || inasistencias > 100) {
    print("La cantidad de inasistencias debe estar entre 1 y 100.");
    return;
  }

  var index = aprendices.indexWhere((aprendiz) => aprendiz.documento == documento);
  if (index != -1) {
    aprendices[index].inasistencias = inasistencias;
  } else {
    var aprendiz = Aprendiz(documento, nombreCompleto, inasistencias);
    aprendices.add(aprendiz);
  }

  print("Inasistencias registradas correctamente.");
}

void listarInasistencias(List<Aprendiz> aprendices) {
  if (aprendices.isEmpty) {
    print("No hay aprendices registrados.");
    return;
  }

  print("Lista de inasistencias:");
  aprendices.forEach((aprendiz) {
    print("Documento: ${aprendiz.documento}, Nombre: ${aprendiz.nombreCompleto}, Inasistencias: ${aprendiz.inasistencias}");
  });
}

void listarInasistenciasSuperioresTres(List<Aprendiz> aprendices) {
  var aprendicesConInasistenciasSuperioresTres = aprendices.where((aprendiz) => aprendiz.inasistencias > 3).toList();

  if (aprendicesConInasistenciasSuperioresTres.isEmpty) {
    print("No hay aprendices con inasistencias superiores a 3.");
    return;
  }

  print("Aprendices con inasistencias superiores a 3:");
  aprendicesConInasistenciasSuperioresTres.forEach((aprendiz) {
    print("Documento: ${aprendiz.documento}, Nombre: ${aprendiz.nombreCompleto}, Inasistencias: ${aprendiz.inasistencias}");
  });
}

void consultarTotalInasistencias(List<Aprendiz> aprendices) {
  if (aprendices.isEmpty) {
    print("No hay aprendices registrados.");
    return;
  }

  print("Ingrese el documento del aprendiz:");
  var documento = stdin.readLineSync()!;
  var aprendiz = aprendices.firstWhere((aprendiz) => aprendiz.documento == documento, orElse: () => Aprendiz("", "", 0));
  if (aprendiz.documento.isEmpty) {
    print("El aprendiz con el documento ingresado no está registrado.");
    return;
  }

  print("Total de inasistencias para el aprendiz ${aprendiz.nombreCompleto}: ${aprendiz.inasistencias}");
}

void calcularValorPagar(List<Venta> ventas) {
  print("Ingrese el código del producto:");
  var codigo = stdin.readLineSync()!;
  print("Ingrese el nombre del producto:");
  var nombre = stdin.readLineSync()!;
  print("Ingrese el precio del producto:");
  var precio = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad del producto:");
  var cantidad = int.parse(stdin.readLineSync()!);

  try {
    var venta = Venta(codigo, nombre, precio, cantidad);
    var valorPagar = venta.calcularValorPagar();
    print("El valor a pagar es: \$${valorPagar.toStringAsFixed(2)}");
    ventas.add(venta);
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}

void generarNumeroSuerte() {
  var rng = Random();
  var numeroSuerte = rng.nextInt(1000);
  var numeroSuerteString = numeroSuerte.toString().padLeft(3, '0');
  print("Número de suerte: $numeroSuerteString");
}
