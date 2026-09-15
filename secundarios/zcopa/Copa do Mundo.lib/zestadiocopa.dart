import 'zpaiscopa.dart';
import 'zexcesao.dart';

class Estadio extends EntidadeCopa {
  int _capacidade = 0;

  Estadio(super.pais, this._capacidade);

  void set capacidade(int valor) {
    if (valor <= 0) {
      throw DadosInvalidosException('tem que ser maior q 0');
    }
    _capacidade = valor;
  }

  int get capacidade => _capacidade;

  @override
  String exibirResumo() {
    return 'pais $pais, capacidade $_capacidade';
  }
}
