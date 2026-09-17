import 'dart:io';

class AssentoOcupadoException implements Exception{
  final String mensagem;

  AssentoOcupadoException(this.mensagem);

  @override
  String toString() => 'vaga ja ocupadada $mensagem';
}

class Assento {
  int _numero;
  bool _ocupado;

  Assento(this._numero) : _ocupado = false;

  int get numero => _numero;
  bool get ocupado=> _ocupado;

  void reservar(){
    if (_ocupado == true){
      throw AssentoOcupadoException;
    } else {
      print('reservar salva');
    }
  }
  void cancelar(){
    _ocupado = false;
  }
}
class Passageiro{
  String _nome;
  String _cpf;

  Passageiro(this._cpf, this._nome);
 
  String get nome => _nome;
  String get cpf => _cpf;
}
class Passagem {
  final Assento _assento; 
  final Passageiro _passageiro;

  Passagem(this._assento, this._passageiro);

  void emitirPassagem(){
    _assento.reservar();
      print('reservar pronta ${_passageiro}');
  }
}

void main(List<String> args) {
  stdout.write('qual o o nome: ');
  String nome = stdin.readLineSync()!;
  stdout.write('qual o o cpf: ');
  stdout.write('qual o o cpf: ');
  String cpf = stdin.readLineSync()!;

  var usuariopasageiro = Passageiro(nome, cpf);
  stdout.write('qual o lugar: ');
  
  
}