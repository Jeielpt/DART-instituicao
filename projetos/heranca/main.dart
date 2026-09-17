import 'dart:io';

import 'animais/animal.dart';
import 'animais/ave.dart';
import 'animais/gato.dart';
import 'animais/lobo.dart';
import 'animais/cobra.dart';
import 'animais/padal.dart';
import 'animais/pato.dart';
import 'animais/rato.dart';

void main() {
  const int SAIR = 4;
  int opcao;
  do {
    montaMenu();
    opcao = leOpcao();

    switch (opcao) {
      case 1:
        Lobo lobo = Lobo(leNome());
        print(lobo);
        break;
      case 2:
        Gato gato = Gato(leNome());
        print(gato);
        break;
      case 3:
        testarAnimais();
      case SAIR:
        print("Saindo...");
        break;
      default:
        print("Opção inválida!");
    }
  } while (opcao != SAIR);

}

String leNome() {
  stdout.write("Digite o nome do animal: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    return input;
  } else {
    return "Sem-Nome-Ainda";
  }
}

int leOpcao() {
  String? input = stdin.readLineSync();
  int opcao=0;
  if (input != null) {
    opcao = int.parse(input);
  }
  return opcao;
}

void testarAnimal(Animal animal) {
  print("O nome deste animal é ${animal.nome} e ele é um ${animal.runtimeType}");
  if (animal is Gato) {
    animal.ronronar();
  }
}

void montaMenu() {
  print("\nMenu:");
  print("1. Cadastrar um lobo");
  print("2. Cadastrar um gato");
  print("3. mostrar");
  print("3. Sair");
  stdout.write("Digite uma opção: ");
}

void testarAnimais() {
  print("\nAnimais:");
  Gato gato = Gato("Fluflu");
  print(gato.nome);
  print(gato.emitirSom());
  gato.ronronar();

  Ave pato = Pato("Donald");
  print(pato.nome);
  print(pato.emitirSom());

  Lobo lobo = Lobo("Lobo de Fogo");
  print(lobo.nome);
  print(lobo.emitirSom());
  
  Rato rato = Rato("Mine");
  print(rato.nome);
  print(rato.emitirSom());
  
  Pardal pardal = Pardal("andorinhas");
  print(pardal.nome);
  print(pardal.emitirSom());

  var cobra = Cobra("Naja");
  print(cobra.nome);
  print(cobra.emitirSom());

  print("\nTestando animais:");
  testarAnimal(gato);
  testarAnimal(pato);
  testarAnimal(lobo);
  testarAnimal(cobra);
  testarAnimal(rato);
  testarAnimal(pardal);

  exibirrato(rato);

  print("\nRato avança em X e Y ...");
  rato.avancar(5, 5);
  exibirrato(rato);

  exibirPardal(pardal);

  print("\nPardal subindo e recuando posições");
  pardal.subir(10);
  pardal.recuar(2, 2);
  exibirPardal(pardal);
}

void exibirPardal(Pardal p) {
  print('Nome:      ${p.nome}'); 
  print('Posição X: ${p.posx}');
  print('Posição Y: ${p.posy}');
  print('Altura:    ${p.altura}');
  print('Som:       ${p.emitirSom()}');
} 

void exibirrato(Rato r) {
  print('Nome:      ${r.nome}'); 
  print('Posição X: ${r.posx}');
  print('Posição Y: ${r.posy}');
  print('Som:       ${r.emitirSom()}');
}