
import 'package:biloteca_flutter/models/livro.dart';
import 'package:flutter/material.dart';

abstract class FormularioWidget extends StatefulWidget {
  final Livro? livroParaEdicao;
  const FormularioWidget({ Key? key, this.livroParaEdicao }) : super(key: key);

  onCancelar() {}

  void onSalvar(Livro livro) {}

}


abstract class FormularioWidgetState extends State<FormularioWidget> {
  void initState() {

}
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}