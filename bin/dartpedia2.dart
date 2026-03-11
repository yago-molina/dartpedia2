import 'dart:io';
import 'package:http/http.dart' as http;

const version = '0.0.1'; // GLOBAL

// Metodo Principal
void main(List<String> args) {
  // Se criar uma variavel dentro do Main, é uma variavel local
  if(args.isEmpty || args.first == 'help') {
    printusage();
  } else if (args.first == 'version') {
    print('Dartpedia CLI - Versão $version');
  }else if (args.first == 'search') {
    final inputArgs = args.length > 1 ? args.sublist(1) : null; // Se tiver algum argumento despois do 'search' ele guarda na variavel 'inputArgs'
    searchWikipedia(inputArgs);
  }
   else{
    printusage();
  }
}

void printusage() {
  print("Comandos Validos: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// ? - Pode ou não receber valores
void searchWikipedia(List<String>? args) async{
  final String? tituloArtigo;

  if (args == null || args.isEmpty){
    print('Por favor forneça um assunto');
    final inputStdin = stdin.readLineSync();
    if(inputStdin == null || inputStdin.isEmpty){
      print('Erro, pesquisa em branco');
      return;
    }
    tituloArtigo = inputStdin;
  } else {
    tituloArtigo = args.join(' ');
  }
  print('Procurando artigos sobre $tituloArtigo. Aguarde');
  var conteudoArtigo = await (getWikipediaArticle(tituloArtigo));
  print('Aqui Está');
  print('$conteudoArtigo');
}

Future<String> getWikipediaArticle(String tituloArtigo) async{
  final url = Uri.https(
    'en.wikipedia.org',
    '/api/rest_v1/page/summary/$tituloArtigo',
    );
    
  final response = await http.get(url); // Enquanto esse comando não terminar o código não continua.
  
  if(response.statusCode == 200){
    return response.body;
  }
  return 'Erro, falha ao acessar o $tituloArtigo'; // Não se usa um else nessa parte, por que se der erro ele nem continua lendo
}