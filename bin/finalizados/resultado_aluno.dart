import 'dart:io';
class MyExcention{
  final String mesagem;
  final double n;

  MyExcention(this.masagem, this.n);

  @override
  String erroString(){
    return 'erro: $mesagem (Requested: $n)';
  }
}

void verificaResultado(){
  print('digite as nota do aluno');
  double n = double.parse(stdin.readLineSync()!);
  if (n >= 60){
    print('aprovado');
  } else if (n == 0){
    sair = false;
  } else if (n < 40){
    print('reprovado');
  } else if (n >= 40 && n < 60){
    print('exame final');
  } else{
    print('erro');
  }
}

bool sair = true;
void main(){

  while(sair){
    try{
      verificaResultado();
    } on MyExcention catch (e) {
      print('capturada exceção personalizada: $e')
    } 
  }
}