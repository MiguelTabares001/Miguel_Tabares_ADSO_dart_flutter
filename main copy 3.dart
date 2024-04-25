/*
#3 Crear un programa en dart orientado a objetos que permita calcular el area y el perimetro de un circulo
No se permiten radios negativos  
*/

import 'dart:io';
import 'dart:math';

class Circulo {
    double radio;

    Circulo(this.radio);

    double calcularArea() {
        if (radio < 0) {
            throw ArgumentError('El radio no puede ser negativo');
        }
        return pi * radio * radio;
    }

    double calcularPerimetro() {
        if (radio < 0) {
            throw ArgumentError('El radio no puede ser negativo');
        }
        return 2 * pi * radio;
    }
}

void main() {
    try {
        // Solicitar al usuario que ingrese el radio
        print('Ingrese el radio del círculo:');
        double radio = double.parse(stdin.readLineSync()!);

        // Crear un objeto de la clase Circulo con el radio proporcionado por el usuario
        Circulo miCirculo = Circulo(radio);

        // Calcular el área y el perímetro del círculo
        double area = miCirculo.calcularArea();
        double perimetro = miCirculo.calcularPerimetro();

        // Mostrar los resultados
        print('El área del círculo es: $area');
        print('El perímetro del círculo es: $perimetro');
    } catch (e) {
        print(e);
    }
}





