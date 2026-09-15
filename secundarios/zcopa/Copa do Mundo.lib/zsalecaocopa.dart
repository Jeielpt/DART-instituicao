import 'zpaiscopa.dart';
import 'zapresenta.dart';

class Selecao extends EntidadeCopa implements Apresenta {
  String? _nome;

  Selecao(super.pais, this._nome);

  String get nome => _nome ?? pais;

  @override
  String exibirResumo() {
    return 'seleção $nome, Pais $pais';
  }

  @override
  void apresenta() {
    print('A seleção $nome está pronta para disputar a Copa do Mundo de 2026.');
  }
}
