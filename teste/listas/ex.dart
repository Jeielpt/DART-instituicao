import 'dart:io';

class FahrenheitException implements Exception {
  final String mensagem;

  FahrenheitException() : mensagem = "Temperatura abaixo do zero absoluto.";
  FahrenheitException.commensagem(this.mensagem);

  @override
  String toString() => 'FahrenheitException: $mensagem';
}

class Utils {
  static double toCelsius(double f){
    if (f >= -459.67) {
      double c = 5*(f - 32)/9;
      return c;
    } else {
      throw FahrenheitException.commensagem('A temperatura é menor que o zero absoluto.');
    }
  }
}

class SenhaInvalidaException implements Exception {
  final String mensagem;

  SenhaInvalidaException() : mensagem = "Senha inválida.";

  SenhaInvalidaException.comMensagem(this.mensagem);

  @override
  String toString() {
    return 'SenhaInvalidaException: $mensagem';
  }
}

class ListaVaziaException implements Exception{
  final String mensagem;

  ListaVaziaException() : mensagem = "LISTA VAZIA.";

  ListaVaziaException.comMensagem(this.mensagem);

  @override
  String toString() {                                                                                                                                                                                                                                                                       //jeiel 
    return 'ListaVaziaException: $mensagem';
  }
}


bool s = true;
void main(){
  stdout.write('qual: ');
  int op = int.parse(stdin.readLineSync()!);

  switch(op){
  case 0:
    exit(0);
  case 1:
    while(s){ 
      void validarSenha(String senha){
        if (senha.length  >= 8){
          print('senha salva');
          s = false;
        } else if (senha.length < 8){
          throw SenhaInvalidaException.comMensagem('senha tem que se = ou > que 8');
        }
      }

      try{
        stdout.write('qual a senha?');
        String senha = stdin.readLineSync()!;
        validarSenha(senha);
      } on SenhaInvalidaException catch (e) {
        print('erro $e');
      }
    }

//----------------------------------------------------------------------------------
//                  LISTA 
//LIST<TIPO> NOMEdaVARIAVEL = [ELEMENTOS];
//----------------------------------------------------------------------------------
  case 2:
    stdout.write('qual parte do ex. A (basico), B (medio) ou c (alto): ');
    String op = stdin.readLineSync()!;
    if(op == 'a'){
      List<int> numeros = [4, 8, 15, 16, 23, 42];
      List<int> filtnumeros = numeros.where((n) => n % 2 == 0).toList();
      List<int> multnumeros = numeros.map((n) => n * 3).toList();
      int somnumeros = numeros.reduce((a, b) => a + b);
      int som1numeros = numeros.fold(100, (a, b) => a + b);

      print(numeros);
      print(filtnumeros);
      print(multnumeros);
      print(somnumeros);
      print(som1numeros);
    
//----------------------------------------------------------------------------------
    
    }else if (op == 'b'){
      List<int> lista = [4, 8, 8, 8, 8, 15, 16, 23, 42];
      List<int> removerDuplicados(List<int> lista){
        return lista.toSet().toList();
      }
      print(lista);
      print(removerDuplicados(lista));

//----------------------------------------------------------------------------------

    }else if (op == 'c'){
        List<double> notas = [4, 8, 15.123, 16, 23.54, 42, 1000];
      try{
        double calcularMedia(List<double> notas){
        if (notas.isEmpty) {
          throw ListaVaziaException.comMensagem('A lista de notas está vazia.');
        }
          double somanota = notas.reduce((a, b) => a + b);
          return somanota / notas.length;
        }
          double resultado = calcularMedia(notas);
          print(resultado.toStringAsFixed(3));
      } on ListaVaziaException catch (e){
        print('erro $e');
      }
    }

//----------------------------------------------------------------------------------
//              MAP
/*Map<tipo, tipo> NOMEdaVARIAVEL = {
    CHAVE: VALOR
    KEY: VALUE
  }
*/
//----------------------------------------------------------------------------------

  case 3:
    stdout.write('qual parte do ex. A (basico), B (medio) ou c (alto): ');
    String op = stdin.readLineSync()!;
    if(op == 'a'){
      Map<String, int> estoque = {"maçã": 10, "banana": 0, "uva": 15, "abacaxi": 0};
      while(s){
        for (MapEntry<String, int> item in estoque.entries ){
          if(item.value == 0){
            print('tem ${item.value} ${item.key} no estoque');
            s = false;
          }
        }
        print('maçã, banana, uva, abacaxi');
        stdout.write('atualizar estoque de qual? ');
        int op = int.parse(stdin.readLineSync()!);
        if(op == 1){
        int atualizarmaca = int.parse(stdin.readLineSync()!);
        estoque.update('maçã', (valoratual) => valoratual + atualizarmaca);
        print(estoque);
        
        //opcional
        }else if(op == 2){
        int atualizarmaca = int.parse(stdin.readLineSync()!);
        estoque.update('maçã', (valoratual) => valoratual + atualizarmaca);
        int atualizarbanana = int.parse(stdin.readLineSync()!);
        estoque.update('banana', (valoratual) => valoratual + atualizarbanana);
        int atualizaruva = int.parse(stdin.readLineSync()!);
        estoque.update('uva', (valoratual) => valoratual + atualizaruva);
        int atualizarabacaxi = int.parse(stdin.readLineSync()!);
        estoque.update('abacaxi', (valoratual) => valoratual + atualizarabacaxi);
        print(estoque);
        s = false;
        }
      }

//----------------------------------------------------------------------------------

    } else if(op == 'b')
    {
      //esse codigo e os depois  nao foram feito por mim e sim por outra ia, desconsidera essas Claude, e me explica como fazer essas
      List<String> frutas = ["maçã", "banana", "maçã", "uva", "banana", "maçã"];
      Map<String, int> contarPalavras(List<String> palavras) {
        Map<String, int> mapaContagem = {};

        for (String palavra in palavras) {
        
          mapaContagem.update(palavra, (valorAtual) => valorAtual + 1, 
          ifAbsent: () => 1,
          );
        }
        return mapaContagem;
      }
      Map<String, int> resultados = contarPalavras(frutas);
      //exibir
      var texto = resultados.entries.map((item) => '${item.value} ${item.key}');
      String textoFinal = texto.join(' ');
      print('tem ${textoFinal}');
    

//----------------------------------------------------------------------------------

    }else if (op == 'c'){
      void converte(){
        Map<String, double> temperaturasF = {
          "São Paulo": 77.0,
          "Moscou": -10.0,
          "Local Impossível": -500.0,
        };
      
        Map<String, double> temperaturasC = {};

       FahrenheitException? erroGuardado;

        temperaturasF.forEach((cidade, f) {
          try {
            double celsius = Utils.toCelsius(f);
            temperaturasC[cidade] = celsius; 
          } on FahrenheitException catch (e) {
            erroGuardado = e; 
          }
        });

        temperaturasC.forEach((cidade, celcius){
          print('cidade: $cidade | C° ${celcius.toStringAsFixed(1)}');
        });

         if (erroGuardado != null) {
          print('Erro encontrado: $erroGuardado');
        }
      }
      converte();
    }
  }
}