import 'mamifero.dart';
import 'anda.dart';

class Rato extends Mamifero implements Anda {
  Rato(super._nome);
  
  int _posx = 1, _posy = 2; // posição do rato
  
  int get posx => _posx;
  int get posy => _posy;

  @override
  void avancar(int deslx, int desly) {
    _posx += deslx;
    _posy += desly;
  }
  
  @override
  void recuar(int deslx, int desly) {
    _posx -= deslx;
    _posy -= desly;
  }

  @override
  String emitirSom() {
    return "misca mosca!";
  }
}