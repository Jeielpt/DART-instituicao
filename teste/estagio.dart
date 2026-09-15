import 'dart:io';
/*class Produto{
  String nome;
  int quantidadeEmEstoque;
  double preco;
  bool s = true;

  Produto(this.nome, this.quantidadeEmEstoque, this.preco);

  void adicionarEstoque(int quantidade){
    if(quantidadeEmEstoque > 0){
      quantidadeEmEstoque += quantidade;
    }
  }
  void removerEstoque(int quantidade){
      quantidadeEmEstoque -= quantidade;
    if(quantidadeEmEstoque > 0){

    } else if (quantidadeEmEstoque < 0) {
      print('Erro: Estoque insuficiente para remover $quantidade unidades.');
    }
  }
  void exibirDetalhes(){
    print('$nome | $preco | $quantidadeEmEstoque');
  }
}

void main(){
  Produto p = Produto('cola', 13, 18);  
  p.exibirDetalhes();
  p.adicionarEstoque(12321);
  p.exibirDetalhes();
  p.removerEstoque(100022);
}*/

void main(){
  Map <String, double> qtdalunos = {};

  stdout.write('quantos alunos tem na sala: ');
  int aluno = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < aluno; i++ ){
    print('${i++} Aluno');
    stdout.write('$i aluno: ');
    String nome = stdin.readLineSync()!;

    stdout.write('nota do $i aluno: ');
    double nota = double.parse(stdin.readLineSync()!);

    qtdalunos[nome] = nota;
  }
  stdout.write('qual o aluno que vc que ver: ');
  for(dynamic nomealuno in qtdalunos.entries){
    print('${nomealuno.key} e ${nomealuno.value}');
  }

}