import 'package:meu_app/finalizados/produto.dart'; 
import 'dart:io';

void main() {
  Produto p1 = Produto('RAM ddr5', 2500, 496);
  Produto p2 = Produto('RAM ddr4', 600, 1023);

  p1.exibirResumo();
  print('Total em estoque: R\$ ${p1.totalestoque}');

  p2.exibirResumo();
  print('Total em estoque: R\$ ${p2.totalestoque}');

  print('\nApós alteração de preço:');

  p1.alterarPreco = 3227.92;

  p1.exibirResumo();
  print('Total em estoque: R\$ ${p1.totalestoque}');
}
