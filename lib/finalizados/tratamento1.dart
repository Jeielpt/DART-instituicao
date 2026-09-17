class MyException implements Exception {
  final String mensagem;
  final double nt;

  MyException(this.mensagem, this.nt);

  @override
  String toString() {
    if (nt < 0 || nt > 100) {
      return 'erro: $mensagem (Requested, $nt tem que ser >= 1 e <= 100: )';
    }
    return mensagem;
  }
}