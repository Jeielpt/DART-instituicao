import 'dart:io';
class Aluno{
  final String nome;
  final String cor;
  final DateTime data;

  Aluno(this.nome, this.cor, this.data,);

  @override
  String toString() => 'nome:$nome, cor: $cor, data: $data';
}
void main() async{
  final arquivo = File('aluno2infob.csv');
  List<dynamic> Listaaluno = [];

  if(await arquivo.exists()){
    var possui = await arquivo.readAsString();
  }
}