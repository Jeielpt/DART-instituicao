/*
 *  @jeiel 
 */
class Bovino {
  String _nome = '';
  String _raca = '';
  double _peso = 0.1;

  Bovino(String nome, String raca, double peso){
    setnome(nome);
    setpeso(peso);
    setraca(raca);
  }

  Bovino.teste():
    _nome = 'zebu', 
    _raca = 'bovino de teste',
    _peso = 1000;
  
  String get nome => _nome;
  String get raca => _raca;
  double get peso => _peso;

  void setnome(String value) {
    if (value.isEmpty) {
      print('Erro');
    } else {
      _nome = value;
    }
  }

  void setraca(String value) {
    if (value.isEmpty) {
      print('Erro');
    } else {
      _raca = value;
    }
  }

   void setpeso(double value) {
    if (value <= 0) {
      print('Erro');
    } else {
      _peso = value;
    }
  }
}

