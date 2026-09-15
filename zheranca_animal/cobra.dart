/**
 * Subclasse para cobras, que herda de reptil
 * @author Leonardo
 * @version 1.0
 * @since 26/05/2026
 */

import 'reptil.dart';

class Cobra extends Reptil {
  Cobra(String nome) : super(nome);

  @override
  String emitirSom() {
    return "Sssss!";
  }
}