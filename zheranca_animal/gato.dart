/**
 * Subclasse para gatos, que herda de mamifero
 * @author Leonardo
 * @version 1.0
 * @since 26/05/2026
 */

import 'mamifero.dart';

class Gato extends Mamifero {
  Gato(String nome) : super(nome);

  @override
  String emitirSom() {
    return "Miau!";
  }

  void ronronar() {
    print("O gato ronronou!");
  }

   @override
   String toString() {
     return "Gato ${this.nome} faz o som ${this.emitirSom()}!";
   }
}
