import 'package:meu_app/finalizados/fracao.dart';
import'dart:io';
/*
 *  @jeiel 
 */
void main(List<String> arguments){
  Fracao f1 = Fracao();
  
  print('qual o numerado: ');
  String? num = stdin.readLineSync();
  if(num != null && num.isNotEmpty){
    f1.numerador = double.parse(num);
  }
  print('qual o denominado:');
  String? den = stdin.readLineSync();
  if(den != null && den.isNotEmpty){
    f1.denominador = double.parse(den);
  }
  f1.imprimir();

  print("resultador: ${f1.result()}");
}