/**
 * Subclasse para lobos, que herda de mamifero
 * @author Leonardo
 * @version 1.0
 * @since 26/05/2026
 */

import 'mamifero.dart';

class Lobo extends Mamifero {
  Lobo(String nome) : super(nome);

  @override
  String emitirSom() {
    return "Auuuu!";
  }

  // @override
  // String toString() {
  //   return "Lobo ${this.nome} faz o som ${this.emitirSom()}!";
  // }
}