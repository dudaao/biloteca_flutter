import 'package:biloteca_flutter/models/livro.dart';

List<Livro> livros = [];

class Bookservice {
  List<Livro> getLivros() {
    return livros;
  }

  void addLivro(Livro livro) {
    livros.add(livro);
  }
}
