/*
Evaluacion Dart - Miguel Ángel Tabares Cano ADSO 2742550
*/

import 'dart:io';

class Cuenta {
  String titular;
  double saldo;

  Cuenta(this.titular, this.saldo);

  @override
  String toString() {
    return 'Titular: $titular - Saldo: \$ $saldo';
  }
}

class Banco {
  List<Cuenta> cuentas = [];

  void registrarCuenta() {
    stdout.write('Ingrese el nombre del titular de la cuenta: ');
    String titular = stdin.readLineSync()!;
    if (cuentas.any((cuenta) => cuenta.titular == titular)) {
      print('La cuenta ya está registrada.');
    } else {
      cuentas.add(Cuenta(titular, 0));
      print('Cuenta registrada exitosamente.');
    }
  }

  void verCuentasRegistradas() {
    if (cuentas.isEmpty) {
      print('No hay cuentas registradas.');
    } else {
      print('Cuentas registradas:');
      cuentas.forEach((cuenta) => print(cuenta));
    }
  }

  void consignarDinero() {
    if (cuentas.isEmpty) {
      print('No hay cuentas registradas.');
      return;
    }

    stdout.write('Ingrese el nombre del titular de la cuenta: ');
    String titular = stdin.readLineSync()!;
    var cuenta = cuentas.firstWhere((cuenta) => cuenta.titular == titular, orElse: () => Cuenta('', 0));

    if (cuenta.titular.isEmpty) {
      print('La cuenta no existe.');
      return;
    }

    stdout.write('Ingrese la cantidad a consignar: ');
    double cantidad = double.parse(stdin.readLineSync()!);
    if (cantidad <= 0) {
      print('La cantidad a consignar debe ser mayor que 0.');
      return;
    }

    cuenta.saldo += cantidad;
    print('Consignación exitosa. Nuevo saldo: \$ ${cuenta.saldo}');
  }

  void transferirDinero() {
    if (cuentas.length < 2) {
      print('Se necesitan al menos dos cuentas registradas para realizar una transferencia.');
      return;
    }

    stdout.write('Ingrese el nombre del titular de la cuenta de origen: ');
    String titularOrigen = stdin.readLineSync()!;
    var cuentaOrigen = cuentas.firstWhere((cuenta) => cuenta.titular == titularOrigen, orElse: () => Cuenta('', 0));

    if (cuentaOrigen.titular.isEmpty) {
      print('La cuenta de origen no existe.');
      return;
    }

    stdout.write('Ingrese el nombre del titular de la cuenta de destino: ');
    String titularDestino = stdin.readLineSync()!;
    var cuentaDestino = cuentas.firstWhere((cuenta) => cuenta.titular == titularDestino, orElse: () => Cuenta('', 0));

    if (cuentaDestino.titular.isEmpty) {
      print('La cuenta de destino no existe.');
      return;
    }

    stdout.write('Ingrese la cantidad a transferir: ');
    double cantidad = double.parse(stdin.readLineSync()!);
    if (cantidad <= 0 || cantidad > cuentaOrigen.saldo) {
      print('Cantidad Invalida! La cantidad a transferir debe ser mayor que 0 y menor o igual al saldo de la cuenta de origen.');
      return;
    }

    cuentaOrigen.saldo -= cantidad;
    cuentaDestino.saldo += cantidad;
    print('Transferencia exitosa.');
  }

  void retirarDinero() {
    if (cuentas.isEmpty) {
      print('No hay cuentas registradas.');
      return;
    }

    stdout.write('Ingrese el nombre del titular de la cuenta: ');
    String titular = stdin.readLineSync()!;
    var cuenta = cuentas.firstWhere((cuenta) => cuenta.titular == titular, orElse: () => Cuenta('', 0));

    if (cuenta.titular.isEmpty) {
      print('La cuenta no existe.');
      return;
    }

    stdout.write('Ingrese la cantidad a retirar: ');
    double cantidad = double.parse(stdin.readLineSync()!);
    if (cantidad <= 0 || cantidad > cuenta.saldo) {
      print('Cantidad Invalida! La cantidad a retirar debe ser mayor que 0 y menor o igual al saldo de la cuenta.');
      return;
    }

    cuenta.saldo -= cantidad;
    print('Retiro exitoso. Nuevo saldo: \$ ${cuenta.saldo}');
  }

   void mostrarMenu() {
    while (true) {
      print('\nMENU');
      print('1. Registrar Cuenta');
      print('2. Ver cuentas registradas');
      print('3. Consignar dinero');
      print('4. Transferir dinero');
      print('5. Retirar dinero');
      print('6. Salir');
      stdout.write('Seleccione una opción: ');

      String opcion = stdin.readLineSync()!;
      switch (opcion) {
        case '1':
          registrarCuenta();
          break;
        case '2':
          verCuentasRegistradas();
          break;
        case '3':
          consignarDinero();
          break;
        case '4':
          transferirDinero();
          break;
        case '5':
          retirarDinero();
          break;
        case '6':
          return;
        default:
          print('Opción inválida. Por favor, seleccione una opción válida.');
      }
    }
  }
}

void main() {
  var banco = Banco();
  banco.mostrarMenu();

}
