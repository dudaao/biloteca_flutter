import 'package:biloteca_flutter/enums/StatCardType.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class CardEstatistica extends StatelessWidget {
  final int valor;
  final StatCardType tipo;
  const CardEstatistica({
    Key? key,
    required this.valor,
    required this.tipo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 210,
      decoration: BoxDecoration(
          color: const Color.fromARGB(66, 0, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      padding: EdgeInsets.all(4),
      child: Row(
        spacing: 10,
        children: [
          Container(
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: tipo == StatCardType.atrasados
                    ? Colors.red
                    : tipo == StatCardType.emprestados
                        ? Colors.amber
                        : Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Icon(Icons.book,
                color: const Color.fromARGB(214, 255, 255, 255), size: 35),
          ),
          Column(
            children: [
              Text(
                tipo == StatCardType.atrasados
                    ? "Livros atrasados"
                    : tipo == StatCardType.emprestados
                        ? "Livros emprestados"
                        : "Livros em estoque",
                style: TextStyle(color: Colors.white70),
              ),
              AnimatedFlipCounter(
                duration: Duration(milliseconds: 700),
                value: valor,
                textStyle: TextStyle(color: Colors.white70),
              )
            ],
          )
        ],
      ),
    );
  }
}
