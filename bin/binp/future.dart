import 'dart:io';

void main() async {
  var arquivo = File('bin/binp/farquivo.txt');
  var relatorio = File('bin/binp/frelatorio.txt');
  var leitura;
  var quantidade;
  
  if (await arquivo.exists()) {
    quantidade = await arquivo.readAsLines();
    leitura = await arquivo.readAsString();
    
    await relatorio.writeAsString(
      'relatorio do arquivo:\nquantidade de linhas: ${quantidade.length}\nConteudo original: \n$leitura'
    );
    
    print(await relatorio.readAsString());
  } else {
    print('Erro: O arquivo farquivo.txt não foi encontrado no caminho especificado.');
  }
}
