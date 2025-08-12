class Livro {
int? id;
final String titulo;
final String autor;
final String isbn;
final int anoPublicacao;
final String categoria;
bool disponivel;
final DateTime dataCadastro;
final String descricao;
Livro({
this.id,
required this.titulo,
required this.autor,
required this.isbn,
required this.anoPublicacao,
required this.categoria,
this.disponivel = true,
DateTime? dataCadastro,
this.descricao = "",
}) : this.dataCadastro = dataCadastro ?? DateTime.now();

}

