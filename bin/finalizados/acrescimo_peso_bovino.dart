import 'package:meu_app/finalizados/bovinos.dart';
void main() {
Bovino b = Bovino('sss', 'aaa', 234);
Bovino b2 = Bovino.teste();

  acrecentapeso(b, 100);
  acrecentapeso(b2, 100);

  print('Nome: ${b.nome}');
  print('Raça: ${b.raca}');
  print('Peso: ${b.peso} kg');

  print('Nome: ${b2.nome}');
  print('Raça: ${b2.raca}');
  print('Peso: ${b2.peso} kg');

}
void acrecentapeso(Bovino b, double peso){
  b.peso += peso;
}