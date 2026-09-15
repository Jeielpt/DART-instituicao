import 'dart:io';

class Aluno {
  String nome;
  String corFavorita;
  String dataNascimento;

  Aluno(this.nome, this.corFavorita, this.dataNascimento);

  @override
  String toString() {
    return 'Aluno(nome: $nome, corFavorita: $corFavorita, dataNascimento: $dataNascimento)';
  }
}

Future<List<Aluno>> carregarAlunos(String caminho) async {
  var arquivo = File(caminho);
  var alunos = <Aluno>[];

  if (await arquivo.exists()) {
    var conteudo = await arquivo.readAsString();
    var linhas = conteudo.trim().split('\n');

    // A primeira linha é o cabeçalho, então começamos do índice 1.
    for (var i = 1; i < linhas.length; i++) {
      var campos = linhas[i].split(',');
      var aluno = Aluno(campos[0], campos[1], campos[2]);
      alunos.add(aluno);
    }
  } else {
    print('Erro: arquivo $caminho não encontrado.');
  }

  return alunos;
}

void main() async {
  print('Carregando dados dos alunos...');
  var listaAlunos = await carregarAlunos('alunos_2b.csv');

  print('Total de alunos carregados: ${listaAlunos.length}');
  print('');

  for (var aluno in listaAlunos) {
    print(aluno);
  }
}
