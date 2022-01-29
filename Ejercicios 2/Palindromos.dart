import 'dart:io';

/* Nombre de la escuela: Universidad Tecnologica Metropolitana
    Asignatura: Desarrollo Movil
    Nombre del Maestro: Joel Ivan Chuc Uc
    Nombre de la actividad: Ejercicio 2 Palindromo
    Nombre del alumno: Jose Alejandro Vazquez Suaste
    Cuatrimestre: 5
    Grupo: A
    Parcial: 1
    */
void main() {
  print('**intruducir una palabra o frase**');
  String? adelante = stdin.readLineSync();
  int conteo = adelante!.split(' ').length;
  adelante = adelante.replaceAll(" ", "").toLowerCase();
  String? atras = adelante.split('').reversed.join('');
  if (adelante == atras) {
    print(
        'La palabra es palindromo y tiene la siguiente cantidad de palabras ===>: $conteo');
  } else {
    print('esta palabra NO ES palindromo');
  }
}
