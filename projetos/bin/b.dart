import 'dart:io';

class LivroIndisponivelException implements Exception {
  final String mensagem;

  LivroIndisponivelException(this.mensagem);
  
  @override
  String toString() => "LivroIndisponivelException: $mensagem";
}

class Livro {
  String _titulo;
  String _autor;
  bool _disponivel;

  Livro(this._titulo, this._autor) : _disponivel = true;

  String get titulo => _titulo;
  String get autor => _autor;
  bool get disponivel => _disponivel;

  void reservar() {
    if (!_disponivel) {
      throw LivroIndisponivelException("O livro '$_titulo' ja esta emprestado!");
    }
    _disponivel = false;
  }

  void devolver() {
    _disponivel = true;
  }
}

class Usuario {
  final String _nome;
  final int _id;

  Usuario(this._nome, this._id);

  String get nome => _nome;
  int get id => _id;
}

class Emprestimo {
  final Livro livro;
  final Usuario usuario;

  Emprestimo(this.livro, this.usuario);

  void realizarEmprestimo() {
    livro.reservar();
    print("\nSUCESSO: Emprestimo realizado para ${usuario.nome}.");
  }
}

void main() {
  print("=== CADASTRO DO USUÁRIO ===");
  stdout.write("Digite o seu nome: ");
  String nome = stdin.readLineSync()!; 
  stdout.write("Digite o seu ID (apenas numeros): ");
  int id = int.parse(stdin.readLineSync()!);

  var usuarioLogado = Usuario(nome, id);
  var libroBiblioteca = Livro("O Senhor dos Aneis", "J.R.R. Tolkien");

  print("\n=== LIVRO DISPONÍVEL na biblioteca ===");
  print("Titulo: ${libroBiblioteca.titulo}");

  while (true) {
    print("\nEscolha uma opcao:");
    print("1 - Pegar livro emprestado");
    print("2 - Devolver livro");
    print("3 - Sair");
    stdout.write("Opcao: ");
    String opcao = stdin.readLineSync()!;

    if (opcao == "1") {
      try {
        var novoEmprestimo = Emprestimo(libroBiblioteca, usuarioLogado);
        novoEmprestimo.realizarEmprestimo();
      } on LivroIndisponivelException catch (e) {
        print("\n ERRO BLOQUEADO NO CATCH -> ${e.mensagem}");
      }
    } else if (opcao == "2") {
      if (libroBiblioteca.disponivel) {
        print("\n O livro ja esta na biblioteca.");
      } else {
        libroBiblioteca.devolver();
        print("\n Livro devolvido com sucesso!");
      }
    } else if (opcao == "3") {
      print("\nSaindo...");
      break;
    }
  }
}
