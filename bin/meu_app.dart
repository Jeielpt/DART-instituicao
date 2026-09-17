/*
 *  meu primeiros projetos
 *  @jeiel 
 */
import 'dart:io';

void main() {


  print('---- menu ----');
  print('para POO é 1 a 3');
  print('sair [00]');
  print('cadastro [1]');
  print('pesquisa [2]');
  print('atividades apartir de 223 (dia/mes)');

  stdout.write("qual opçao deseja ir: ");
  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 00:
      print('encerrando o codigo');
      exit(0);

    case 1:
    
    case 2:
      print('nome da empresa: ');


    case 3: 

    case 4:
      stdout.write("quantas repetisoes deseja fazer? ");
      int? nr = int.parse(stdin.readLineSync()!);
          for(int i = 1; i <= nr; i++)
          {
          print('-------cadastro---------');
          String? nome2 = "computador";
          print("“Seja bem-vindo(a)! Qual é o seu nome?” ");
          String? nome = stdin.readLineSync();
          print("Olá, $nome! Estamos felizes em tê-lo(a) conosco na empresa $nome2.");

          stdout.write("qual sua idade? ");
          int? idade = int.parse(stdin.readLineSync()!);

          if (idade >= 18 && idade <= 140 )
          {
            print ("$idade é maior de idade, processo cuncluido");
          } else if (idade <=17 )
          {
            print("$idade é menor de idade, processo negado");
          } else 
          {
            print("$idade brincadeira né!?");
          }
      }
    break;

    case 5:
      stdout.write('vc gostaria da mais infomaçoes? ');
      int? info = int.parse(stdin.readLineSync()!);

      if (info == 1) {
        stdout.write('qual seu cpf? ');
        int? cpf = int.parse(stdin.readLineSync()!);

        if (cpf == 11){
          print('objetivo concluido!');
        } else {
          print('isso nao e um cpf ou tira o (.) e o (-)');
        }
      }
    case 223:
     print('---- atividade pratica 0 ---- ');
      String op;
      do {
        print('escreva sua idade: ');
        int? idade = int.parse(stdin.readLineSync()!);
        if(idade < 16)
          print('Não pode votar');
        else if(idade >= 16 && idade < 18)
          print('Voto facultativo');
        else if (idade >= 18 && idade < 70)
          print('Voto obrigatório');
        else if(idade >= 70 &&  idade <= 122)
          print('Voto facultativo');
        else
          print('nurmero elevado para um humano');

        print('que repertir?(s/n): ');
        op = (stdin.readLineSync()!);
      }while (op == 's');

    case 233:
      print('----atividade pratica 1---- 23/3');
      print('escreva 1 numnero int');
      int? n1 = int.parse(stdin.readLineSync()!);
      print('escreva 1 numnero int');
      int? n2 = int.parse(stdin.readLineSync()!);
      print('o numero é ${n1 + n2}');
      break;

    case 243:
      print('---- atividade pratica 2 ---- 24/3');
      while (true) {
        print('escreva 1 numnero int');
        int? n1 = int.parse(stdin.readLineSync()!);
        if (n1 > 0){
          print('escreva 1 numnero int');
          int? n2 = int.parse(stdin.readLineSync()!);
          if (n2 > 0){
            print('o numero é ${n1 + n2}');
          } else {
            exit(0);
          }
        } else {
          exit(0);
        }
    }
  } 
}