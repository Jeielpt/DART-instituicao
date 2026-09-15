import 'zestadiocopa.dart'; 
import 'zsalecaocopa.dart'; 
import 'zexcesao.dart';

class Partida { 
  Estadio estadio; 
  Selecao selecao1; 
  Selecao selecao2; 
  int _golsSelecao1 = 0; 
  int _golsSelecao2 = 0; 

  Partida(this.selecao1, this.selecao2, this.estadio, int gols1, int gols2) {
    golsSelecao1 = gols1;
    golsSelecao2 = gols2;
  }
  
  set golsSelecao1(int valor) {
    if (valor < 0) {
      throw DadosInvalidosException('Erro: Gols da seleção 1 não podem ser negativos.');
    }
    _golsSelecao1 = valor;
  }

  int get golsSelecao1 => _golsSelecao1;

  set golsSelecao2(int valor) {
    if (valor < 0) {
      throw DadosInvalidosException('Erro: Gols da seleção 2 não podem ser negativos.');
    }
    _golsSelecao2 = valor;
  }

  int get golsSelecao2 => _golsSelecao2;

  String resultado() { 
    return 'Local: ${estadio.exibirResumo()} \n${selecao1.nome}, $golsSelecao1 | $golsSelecao2, ${selecao2.nome}'; 
  }

  String vencedor() { 
    if (golsSelecao1 == golsSelecao2) { 
      return 'empate'; 
    } 
    if (golsSelecao1 > golsSelecao2) { 
      return '${selecao1.nome} ganhou'; 
    } else { 
      return '${selecao2.nome} ganhou'; 
    } 
  } 
}
