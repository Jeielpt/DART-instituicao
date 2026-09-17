void main() {
  int linhas = 3;
  int colunas = 4;

  // Cria uma matriz de 3x4 preenchida com zeros
  List<List<int>> matriz = List.generate(
    linhas,
    (_) => List.generate(colunas, (_) => 0),
  );

  // Inserindo dados na matriz manualmente
  matriz[0][1] = 5;
  matriz[1][2] = 9;
  matriz[2][3] = 7;

  // Exibindo a matriz formatada no console
  print('--- Minha Matriz ---');
  for (var linha in matriz) {
    print(linha);
  }
}
