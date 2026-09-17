class Produto {
  String nome;
  double preco;
  int quantidade;

  Produto(this.nome, this.preco, this.quantidade);
  
  double get totalestoque => preco * quantidade;

  set alterarPreco(double novoPreco) {
    if (novoPreco > 0) {
      preco = novoPreco;
    } else {
      print('Erro: preco deve ser maior que zero.');
    }
  }

  void exibirResumo() {
    print('Produto: ${this.nome} | Preço: R\$ ${this.preco} | Quantidade: ${this.quantidade}');
  }
}
