/*
Realizar un programa con una clase Inmueble y los atributos: direccion, valorArriendo, valorVenta y las subclases Apartamento, Casa.
No se permiten valorArriendo ni valorVenta negativos.
Crear e imprimir objetos
*/

class Inmueble {
  String direccion;
  double valorArriendo;
  double valorVenta;

  Inmueble(this.direccion, this.valorArriendo, this.valorVenta) {
    if (valorArriendo < 0 || valorVenta < 0) {
      throw ArgumentError('Los valores de arriendo y venta no pueden ser negativos');
    }
  }

  @override
  String toString() {
    return 'Dirección: $direccion, Valor de Arriendo: \$${valorArriendo.toStringAsFixed(2)}, Valor de Venta: \$${valorVenta.toStringAsFixed(2)}';
  }
}

class Apartamento extends Inmueble {
  int numHabitaciones;

  Apartamento(String direccion, double valorArriendo, double valorVenta, this.numHabitaciones) : super(direccion, valorArriendo, valorVenta);

  @override
  String toString() {
    return 'Tipo: Apartamento, ${super.toString()}, Número de Habitaciones: $numHabitaciones';
  }
}

class Casa extends Inmueble {
  int numPisos;

  Casa(String direccion, double valorArriendo, double valorVenta, this.numPisos) : super(direccion, valorArriendo, valorVenta);

  @override
  String toString() {
    return 'Tipo: Casa, ${super.toString()}, Número de Pisos: $numPisos';
  }
}

void main() {
  try {
    var apartamento = Apartamento('Calle 123, Apt 101', 1500.0, 200000.0, 2);
    var casa = Casa('Av. Principal, Casa 50', 2000.0, 300000.0, 1);

    print(apartamento);
    print(casa);
  } catch (e) {
    print('Error: $e');
  }
}
