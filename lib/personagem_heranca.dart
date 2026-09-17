class Personagem {
  String nome;
  int nivel;

  Personagem(this.nome, this.nivel);

  void apresentar() {
    print('Nome: $nome | Nível: $nivel');
  }
}

mixin Recuperacao {
  void recuperarEnergia() {
    print('Recuperando energia com habilidade extra!');
  }
}

class Guerreiro extends Personagem {
  Guerreiro(super.nome, super.nivel);

  void atacar() {
    print('$nome ataca com sua espada!');
  }
}

class Mago extends Personagem with Recuperacao {
  Mago(super.nome, super.nivel);

  void atacar() {
    print('$nome lança um feitiço mágicoooooooooooooo...!');
  }
}

void main() {
  Guerreiro guerreiro = Guerreiro('max', 10);
  Mago mago = Mago('contemple po magooo com seu podereeesssssssssssss', 1222);

  mago.atacar();
  mago.recuperarEnergia();
  mago.apresentar();

  guerreiro.apresentar();
  guerreiro.atacar();
}

