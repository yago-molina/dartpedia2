import 'title_set.dart';

// CLASSE
// ATRIBUTOS - CARACTERISTICAS
// CONSTRUTOR
// METODOS - AÇÕES

class Summary{  // TODA CLASSE TEM O MESMO NOME DO ARQUIVO
  // CONSTRUTOR
  Summary({
    required this.titles,
    required this.pageid,
    required this.extract,
    required this.extractHTML,
    required this.lang,
    required this.dir,
    this.url,
    this.description,
  });


  int pageid;
  String extract;
  String extractHTML;
  String? url;
  String lang;
  String dir;
  String? description;
  TitleSet titles;
} 