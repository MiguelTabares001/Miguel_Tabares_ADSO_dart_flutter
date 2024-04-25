/*
#4 Crear una clase de su proyecto que permita mostrar un mensaje cuando se vayan a registrar los datos, es decir, debe tener un método para registrar.
*/

import 'dart:io';

class OrdenDeProduccion {
  int id;
  DateTime fecha;
  String notas;
  int idEmpleado;
  String estado;
  
  OrdenDeProduccion(this.id, this.fecha, this.notas, this.idEmpleado, this.estado);
}

class TablaOrdenDeProduccion {
  List<OrdenDeProduccion> ordenes = [];

  void registrarOrden(int id, DateTime fecha, String notas, int idEmpleado, String estado) {
    var orden = OrdenDeProduccion(id, fecha, notas, idEmpleado, estado);
    ordenes.add(orden);
    print("Orden de producción registrada exitosamente.");
  }
  
  void mostrarOrdenesRegistradas() {
    print("Ordenes de producción registradas:");
    for (var orden in ordenes) {
      print("ID: ${orden.id}");
      print("Fecha: ${orden.fecha}");
      print("Notas: ${orden.notas}");
      print("ID Empleado: ${orden.idEmpleado}");
      print("Estado: ${orden.estado}");
      print(""); // Una línea en blanco para separar cada orden
    }
  }
}

void main() {
  var tablaOrdenes = TablaOrdenDeProduccion();

  while (true) {
    print("Ingrese los datos de la orden de producción:");
    print("ID:");
    var id = int.parse(stdin.readLineSync()!);

    print("Fecha (formato yyyy-mm-dd):");
    var fecha = DateTime.parse(stdin.readLineSync()!);

    print("Notas:");
    var notas = stdin.readLineSync()!;

    print("ID Empleado:");
    var idEmpleado = int.parse(stdin.readLineSync()!);

    print("Estado:");
    var estado = stdin.readLineSync()!;

    tablaOrdenes.registrarOrden(id, fecha, notas, idEmpleado, estado);

    print("¿Desea registrar otra orden? (sí/no):");
    var respuesta = stdin.readLineSync()!;
    if (respuesta.toLowerCase() != "sí") {
      break;
    }
  }

  // Mostrar las órdenes registradas al finalizar
  tablaOrdenes.mostrarOrdenesRegistradas();
}
