import 'package:biloteca_flutter/models/livro.dart';
import 'package:biloteca_flutter/widgets/cards/CardLivro.dart';
import 'package:flutter/material.dart';

class BooksCatalogScreen extends StatefulWidget {
  const BooksCatalogScreen({Key? key}) : super(key: key);



  @override
  _BooksCatalogScreenState createState() => _BooksCatalogScreenState();
}

class _BooksCatalogScreenState extends State<BooksCatalogScreen> {
    
    Livro livro = new Livro(
      titulo: "As várias faces de mim",
      autor: "Clebinho",
      descricao: "As várias faces de clebin",
      disponivel: true,
      isbn: "abc",
      categoria: "Intelectual",
      anoPublicacao: 2025);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CardLivro(livro: livro, onTap: () => {print("sla")})
      ],
    );
  }
}
