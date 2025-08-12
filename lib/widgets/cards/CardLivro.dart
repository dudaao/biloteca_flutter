import 'package:biloteca_flutter/models/livro.dart';
import 'package:flutter/material.dart';

class CardLivro extends StatelessWidget {
  final VoidCallback onTap;

  final String imgSrc =
      "https://static.wixstatic.com/media/dc6a15_716238808d854372aa15f7f3df6b797d~mv2.png/v1/fill/w_1000,h_1000,al_c,q_90,usm_0.66_1.00_0.01/dc6a15_716238808d854372aa15f7f3df6b797d~mv2.png";
  final Livro livro;
  const CardLivro({
    Key? key,
    required this.livro,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.white70)),
      child: Column(
        children: [
          Image.network(imgSrc, fit: BoxFit.cover,width: 300),
          Text(livro.titulo),
          Text(livro.autor),
          OutlinedButton(onPressed: onTap, child: Text("Pegar Lviro"))
        ],
      ),
    );
  }
}
