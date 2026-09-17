import 'dart:io';

class Empresa {
  String nome = '';
  String _cnpj = '';
  int ano = 0;
  double _saldo = 0;

  String get nome => _nome;
  String get cnpj => _cnpj ;
  int get ano => _ano;
  double get saldo => _saldo;
}