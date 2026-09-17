class Carro {
  String _marca = '';
  String _modelo = '';
  int _ano = 0;

  Carro(this._marca, this._modelo, this._ano);

  String get marca => _marca;
  String get modelo => _modelo;
  int get ano => _ano;

  set marca(String value) {
    if (value.isEmpty) {
      print('Erro: marca não pode ser vazia.');
    } else {
      _marca = value;
    }
  }

  set modelo(String value) {
    if (value.isEmpty) {
      print('Erro: modelo não pode ser vazio.');
    } else {
      _modelo = value;
    }
  }

  set ano(int value) {
    if (value < 1945 || value > 2027) {
      print('Erro: ano deve estar entre 1945 e 2027.');
    } else {
      _ano = value;
    }
  }
}