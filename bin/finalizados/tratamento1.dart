import 'dart:io';
import 'package:meu_app/finalizados/tratamento1.dart';

void verificaResultado (String s){
    double n = double.parse(s); 
    if (n < 0 || n > 100) {
      throw MyException('nota inválida', n);
    } else if (n >= 40 && n < 60){
      throw MyException('exame final', n);
    } else if (n >= 60) {
      throw MyException('aprovado', n);
    } else if (n >= 0 || n < 40){
      throw MyException('reprovado', n);
    }
}

bool sair = true;
void main(){
  while(sair){
    stdout.write('\ndigite a nota do aluno S para sair: ');
    String s = stdin.readLineSync()!; 
    try{
      if (s == 's'){
        sair = false;
      } else {
        verificaResultado(s); 
      }
    } on MyException catch (e) {
      print('capturada exceção personalizada: $e');
    } on Exception catch (e) {
      print('\n${e.toString()}');
    }
  }
}