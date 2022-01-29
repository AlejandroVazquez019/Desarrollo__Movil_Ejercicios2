import 'dart:io';

/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Desarrollo Movil
    Nombre del Maestro: Joel Ivan Chuc Uc
    Nombre de la actividad: Ejercicio 2 Salario
    Nombre del alumno: Jose Alejandro Vazquez Suaste
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
void main() {
  int i = 0;
  int Acta = 0;
  int pagohora = 120;
  int pagoextra = 175;
  int pagototal = 0;

  while (i < 4) {
    i = i + 1;
    print("Introducir las horas que el empleado trabajo");
    String horaempleado = stdin.readLineSync() ?? '0';
    int Horas = int.parse(horaempleado);
    if (Horas >= 27 && Horas < 41) {
      pagototal = pagohora * Horas;
      print("El empleado trabajo $Horas Horas, su salario es :$pagototal ");
    } else if (Horas > 40) {
      pagototal = pagohora * 40;
      int hextra = Horas - 40;
      int extras = hextra * pagoextra;
      pagototal = pagototal + extras;
      print("El empleado trabajo $Horas Horas, su salario es :$pagototal ");
    } else if (Horas < 27) {
      Acta = Acta + 1;
      print(
          "El empleado trabajo $Horas Horas, es menos de lo acordado por lo que se le levantara un acta, una mas y sera despedido");
    }
    if (Acta >= 2) {
      print(
          "El empleado a acumulado 2 actas administrativas por lo que sera despedido.");
      break;
    }
  }
}
