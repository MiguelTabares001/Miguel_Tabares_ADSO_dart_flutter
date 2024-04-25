/*
Crear un programa POO llamada inventario que permita incrementar y decrementar el stock de un producto.
Si se compra el producto se incrementa el stock.
Si se vende el producto se decrementa el stock.
No se permiten comprar o vender cantidades inferiores a cero.
No se puede vender una cantidad superior al stock.
El stock nunca podrá ser inferior a 5. Es decir si hay 5 productos y se van a vender 6, no se podra realizar la venta.
Los atributos son nombre, stock, precioCompra, precioVenta.
*/

import 'dart:io';

class Inventario {
  String nombre;
  int stock;
  double precioCompra;
  double precioVenta;

  Inventario(this.nombre, this.stock, this.precioCompra, this.precioVenta);

  void comprar(int cantidad) {
    if (cantidad < 0) {
      print("Error: No se puede comprar una cantidad negativa.");
      return;
    }
    stock += cantidad;
  }

  void vender(int cantidad) {
    if (cantidad < 0) {
      print("Error: No se puede vender una cantidad negativa.");
      return;
    }
    if (cantidad > stock) {
      print("Error: No hay suficiente stock para vender esa cantidad.");
      return;
    }
    if (stock - cantidad < 5) {
      print("Error: No se puede vender esa cantidad, stock mínimo alcanzado.");
      return;
    }
    stock -= cantidad;
    print("Venta realizada con éxito.");
  }

  @override
  String toString() {
    return "Nombre: $nombre, Stock: $stock, Precio de Compra: \$ $precioCompra, Precio de Venta: \$ $precioVenta";
  }
}

void main() {
  var producto = Inventario("Producto A", 10, 10.0, 20.0);
  print(producto);
  
  while (true) {
    print("¿Qué acción deseas realizar?");
    print("1. Comprar producto");
    print("2. Vender producto");
    print("3. Salir");
    
    var opcion = int.tryParse(stdin.readLineSync() ?? '');
    if (opcion == null || opcion < 1 || opcion > 3) {
      print("Por favor, ingresa una opción válida.");
      continue;
    }
    
    if (opcion == 3) {
      print("Saliendo del programa...");
      break;
    }
    
    switch (opcion) {
      case 1:
        print("Ingrese la cantidad de productos a comprar:");
        var cantidadCompra = int.tryParse(stdin.readLineSync() ?? '');
        if (cantidadCompra == null) {
          print("Cantidad inválida.");
          break;
        }
        producto.comprar(cantidadCompra);
        print("Compra realizada con éxito.");
        break;
      case 2:
        print("Ingrese la cantidad de productos a vender:");
        var cantidadVenta = int.tryParse(stdin.readLineSync() ?? '');
        if (cantidadVenta == null) {
          print("Cantidad inválida.");
          break;
        }
        producto.vender(cantidadVenta);
        break;
    }
    
    print("Estado actual del producto:");
    print(producto);
  }
}
