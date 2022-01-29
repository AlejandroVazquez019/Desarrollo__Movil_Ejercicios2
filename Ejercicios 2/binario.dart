import 'dart:io';

/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Desarrollo Movil
    Nombre del Maestro: Joel Ivan Chuc Uc
    Nombre de la actividad: Ejercicio 2 Decimal a binario
    Nombre del alumno: Jose Alejandro Vazquez Suaste
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
void main() {
  int numero1 = 1;
  int numero0 = 0;
  print("**Esta calculadora convertira tu numero decimal a binario**");
  print("Ingrese su numero decimal");
  String deci = stdin.readLineSync() ?? '0';
  int decimal = int.parse(deci);
  while (decimal > 0) {
    numero0 = numero0 + (decimal % 2) * numero1;
    decimal = (decimal / 2).floor();
    numero1 = numero1 * 10;
  }
  print("$deci el resultado en binario es ==>: $numero0");
}
