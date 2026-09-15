/**
 * Classe base para todos os animais
 * @jeiel
 * @version 1.0
 * @since 26/05/2026
 */
abstract class Animal {
  String _nome;

  Animal(this._nome);

  String get nome => _nome;

  set nome(String nome) {
    _nome = nome;
  }

  String emitirSom();

  @override
  String toString() {
    return "O ${this.runtimeType} ${this.nome} faz o som ${this.emitirSom()}!";
  }
}