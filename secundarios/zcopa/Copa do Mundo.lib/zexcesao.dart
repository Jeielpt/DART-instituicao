class DadosInvalidosException implements Exception{
  final String mensagem;

  DadosInvalidosException(this.mensagem);

  @override
  String toString(){
    return 'erro: $mensagem';
  }
}
