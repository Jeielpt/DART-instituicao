import 'dart:io';

class FahrenheitException implements Exception  {
  final String finalmensagem;

  FahrenheitException() : finalmensagem = "Erro na temperatura Fahrenheit."; 
  FahrenheitException.commensagem(this.finalmensagem); 
  
  @override
  String toString() {
    return 'FahrenheitException: $finalmensagem';
  }
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

void main() {
  List<String> mFa = [];
  List<double> mF = [];
  bool s = true;
  
  while(s){ 
    try {
      stdout.write('quanto repetições: ');
      int v = int.parse(stdin.readLineSync()!);
    
      for (int i = 0; i < v; i++){ 
        stdout.write('quanto Fº: ');
        String a = stdin.readLineSync()!;
        double c = Utils.toCelsius(double.parse(a)); 
        mFa.add(a); 
        mF.add(c);

        print('\nquantidade em Fº $a ');
        print('convesao para Cº ${c.toStringAsFixed(3)}');
        
        print('${i+1}° quantidade em Fº ${mFa.join(', ')}');
        print('${i+1}° convesao para Cº  ${mF.map((num) => num.toStringAsFixed(2)).join(', ')}');
      }
      s = false;
    } 
    on FahrenheitException catch (e) { 
      print("Erro de temperatura: ${e.finalmensagem}"); 
    } 
    on Exception catch (e) { 
      print("Erro inesperado: $e"); 
    }
  }
}
