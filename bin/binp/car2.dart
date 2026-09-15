import 'package:meu_app/libp/car1.dart';
import'dart:io';

void main() {
  Carro c1 = Carro('', '', 0);
  Carro c2 = Carro('', '', 0);
  
  c1.marca = 'Fiat';
  c1.modelo = 'Uno';
  c1.ano = 1990;
  
  c2.marca = 'Ford';
  c2.modelo = 'k';
  c2.ano = 2010;

  print('${c1.marca} ${c1.modelo} - ${c1.ano}');
  print('${c2.marca} ${c2.modelo} - ${c2.ano}');
}