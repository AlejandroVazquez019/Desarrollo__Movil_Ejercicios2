import 'dart:io';

/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Desarrollo Movil
    Nombre del Maestro: Joel Ivan Chuc Uc
    Nombre de la actividad: Ejercicio 2 IMC
    Nombre del alumno: Jose Alejandro Vazquez Suaste
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
void main() {
  double IMC = 0;
  print("INTRODUCIR PESO");
  String conpeso = stdin.readLineSync() ?? '0';
  int peso = int.parse(conpeso);

  print("INTRODUCIR ALTURA");
  String conaltura = stdin.readLineSync() ?? '0';
  int altura = int.parse(conaltura);
  double conver = altura / 100;
  IMC = (peso / (conver * conver));

  if (IMC < 18.50) {
    print("Su IMC es: $IMC y tiene un PESO BAJO");
  }

  if (IMC >= 18.50 && IMC < 24.99) {
    print("Su IMC es: $IMC y tiene un PESO NORMAL");
  }

  if (IMC >= 25.0 && IMC < 29.99) {
    print("Su IMC es: $IMC y tiene un PESO SUPERIOR A LO NORMAL");
  }

  if (IMC > 30.0) {
    print("Su IMC es: $IMC y tiene OBESIDAD");
  }
}
