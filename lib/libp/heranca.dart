class Animal {
  String _nome;
  Animal(this._nome);

  String get nome => _nome;

  void sound() {
    print('Animal makes a sound');
  }
}

class Mamifero extends Animal {
  Mamifero(super._nome);
}

class Ave extends Animal {
  Ave(super._nome);
}

class Reptil extends Animal {
  Reptil(super._nome);
}

class Gato extends Mamifero{
  Gato(super._nome);
  @override
  void sound() {
    print('$nome, miau');
  }
  void rorona(){
  print('gato roronando');
  }
}

class Lobo extends Mamifero {
  Lobo(super._nome);
  @override
  void sound() {
    print('$nome, ruiva');
  }
}

class Pato extends Ave {
  Pato(super._nome);
  @override
  void sound() {
    print('$nome, kuack');
  }
}

class Cobra extends Reptil {
  Cobra(super._nome);
  @override
  void sound() {
    print('$nome, ziiiii');
  }
}

