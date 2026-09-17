double calcularValorEstoque(List<Map<String, dynamic>> produtos) {
  double total = 0;
  for (var p in produtos) {
    total += p['preco'] * p['quantidade'];
  }
  return total;
}

List<String> produtosEmFalta(List<Map<String, dynamic>> produtos) {
  List<String> resultado = [];
  for (var p in produtos) {
    if (p['quantidade'] < 5) {
      resultado.add(p['nome']);
    }
  }
  return resultado;
}

void main() {
  List<Map<String, dynamic>> produtos = [
    {'nome': 'Mouse', 'preco': 25.0, 'quantidade': 10},
    {'nome': 'Teclado', 'preco': 80.0, 'quantidade': 3},
    {'nome': 'Monitor', 'preco': 600.0, 'quantidade': 2},
  ];

  print(calcularValorEstoque(produtos));
  print(produtosEmFalta(produtos));
}