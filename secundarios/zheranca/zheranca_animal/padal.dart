import 'ave.dart';
import 'anda.dart';
import 'voa.dart';

class Pardal extends Ave implements Anda, Voa {
  Pardal(super._nome);
  int _posx = 2, _posy = 3; 
  int _altura = 2; // altura do pardal

  int get posx => _posx;
  int get posy => _posy;
  int get altura => _altura;

  @override
  void avancar(int deslx, int desly) {
    _posx -= deslx;
    _posy -= desly;
  }

  @override
  void recuar(int deslx, int desly) {
    _posx += deslx;
    _posy += desly;
  }

  @override
  void subir(int desl_alt) {
    _altura += desl_alt;
  }

  @override
  void descer(int desl_alt) { 
     _altura -= desl_alt;
  }
  @override
  @override
  String emitirSom() {
    return "askdçsadkljdfvplsdkjnv!";
  }
}