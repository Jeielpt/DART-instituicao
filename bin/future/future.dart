import 'dart:io';

// ==========================================
// 1. DECLARAÇÃO DAS FUNÇÕES EXTERNAS
// ==========================================

//codigo 2
Future<int> buscarIdade() {
  return Future.delayed(Duration(seconds: 1), () => 25);
}
//codigo 3
Future<int> buscarestoque(String produto) {
  return Future.delayed(Duration(seconds: 1), () {
    if (produto.isEmpty) {
      throw Exception("Produto não encontrado");
    } 
    return 10;
  });
}
//\ codigo 
//4
Future<String> buscaclima(String clima) {
  return Future.delayed(Duration(seconds: 2), () => clima);
}

Future<int> buscatemperatura(int temp) {
  return Future.delayed(Duration(seconds: 2), () => temp);
}

// ==========================================
// 2. FUNÇÃO PRINCIPAL COM O MENU INTERATIVO
// ==========================================

void main() async {
  stdout.write('Escolha uma opção (1 a 4): ');
  
  // Leitura segura da opção do menu
  String entradaOpcao = stdin.readLineSync() ?? '0';
  int op = int.tryParse(entradaOpcao) ?? 0;

  switch (op) {
    // ----------------------------------------------------
    case 1: // CÓDIGO 1: Uso de .then() (Assíncrono Não-Bloqueante)
      print('--- Executando Código 1 (.then) ---');
      print('inicio');
      buscarIdade().then((idade) {
        print('Idade recebida pelo .then: $idade');
      });
      print('fim'); 
      // Nota: "fim" vai aparecer ANTES da idade na tela, pois o .then não trava o código.
      break;

    // ----------------------------------------------------
    case 2: // CÓDIGO 2: Uso de await (Assíncrono Sequencial)
      print('--- Executando Código 2 (await) ---');
      print('inicio');
      int idade = await buscarIdade(); // Espera 1 segundo bem aqui
      print('Idade: $idade');
      print('Próximo ano: ${idade + 1}');
      print('fim');
      break;

    // ----------------------------------------------------
    case 3: // CÓDIGO 3: Tratamento de Erros com Try/Catch
      print('--- Executando Código 3 (Try/Catch) ---');
      try {
        print('Buscando primeiro produto...');
        int produto1 = await buscarestoque('GPU');
        print('Estoque GPU: $produto1');

        print('Buscando segundo produto (vazio)...');
        int produto2 = await buscarestoque(''); // Vai disparar a Exception aqui!
        
        // Esta linha abaixo nunca será executada porque o código desvia para o catch
        print('Estoque Vazio: $produto2'); 
      } catch (e) {
        print('Erro capturado com sucesso: $e');
      }
      break;

    // ----------------------------------------------------
    case 4: // CÓDIGO 4: Execução Paralela com Future.wait
      print('--- Executando Código 4 (Future.wait) ---');
      stdout.write('Insira os dados do clima (Pressione Enter para Ensolarado): ');
      String test = stdin.readLineSync() ?? '';
      String clima = test.isEmpty ? 'Ensolarado' : test;

      stdout.write('Insira os dados da temperatura (Pressione Enter para 28): ');
      String temperatura = stdin.readLineSync() ?? '';
      int temp = int.tryParse(temperatura) ?? 28;

      print('buscando dados em paralelo...');
      var r = await Future.wait([
        buscaclima(clima),
        buscatemperatura(temp),
      ]);
      
      print('Clima: ${r[0]}');
      print('Temperatura: ${r[1]}°C');
      break;
  }
}