class Github {
  // CONSTRUTOR
  Github({
    required this.nomeRepositorio,
    required this.ownerName,
    required this.visualizacoes,
    required this.quantidadeCommit,
    required this.contagemBranchs,
    required this.tags,
    required this.contagemFavoritos,
    required this.contagemForks,
    required this.nome,
    this.descricao,
    this.siteUrl,
    this.linguagemPrimaria,
    this.previewReadme,
    this.ultimoCommit,
    this.topicos,
  });

  // ATRIBUTOS
  int nomeRepositorio;
  int ownerName;
  int visualizacoes;
  int quantidadeCommit;
  int contagemBranchs;
  int tags;
  int contagemFavoritos;
  int contagemForks;
  String nome;
  String? descricao;
  String? siteUrl;
  String? linguagemPrimaria;
  String? previewReadme;
  String? ultimoCommit;
  String? topicos;
  
}