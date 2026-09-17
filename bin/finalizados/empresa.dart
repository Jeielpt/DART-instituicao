import 'dart:io';
class Empresa{
  String nome;
  int qFunconarios;

  Empresa(this.nome, this.qFunconarios);
}

void main(){
  List<Empresa> listaEmpresa = [];

  print('vc que salva quantas empresas');
  int v = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < v; i++){
    print('------ ${i+1} EMPRESA ------ ');
    stdout.write('${i+1} Empresa: ');
    String nome = stdin.readLineSync()!;    
    stdout.write('qual a quantidade de funcionarios: ');
    int qFunconarios = int.parse(stdin.readLineSync()!); 
    listaEmpresa.add(Empresa(nome, qFunconarios));
  }
  for (var a in listaEmpresa) {
    print('Empresa: ${a.nome} | Funcionários: ${a.qFunconarios}');
  }
}