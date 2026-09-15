import 'dart:io';

void main(List<String> arguments) {
  int number2 = 0;
  int number = 0;
 
  while (true) {
    try {
      print('Informe 1 número inteiro: ');
      String? input = stdin.readLineSync();
      number = int.parse(input!);
      break; 
    } on FormatException {
      print('Erro\n');
    } on UnsupportedError {
      print('erro');
    }
  }
  while (true) {
    try {
      print('Informe 2 número inteiro: ');
      String? input2 = stdin.readLineSync();
      number2 = int.parse(input2!);
      
      int divisao = number ~/ number2;
      print('O resultado da divisão é: $divisao');
      break; 
    } on FormatException {
      print('Erro\n');
    } on UnsupportedError {
      print('Erro');
    } finally {
      print('Fim do programa.');
    }  
  }
}
