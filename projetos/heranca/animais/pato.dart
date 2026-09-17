/**
 * Subclasse para patos, que herda de ave
 * @author Leonardo
 * @version 1.0
 * @since 26/05/2026
 */

import 'ave.dart';

class Pato extends Ave {
  Pato(String nome) : super(nome);

  @override
  String emitirSom() {
    return "Quack quack!";
  }
}
