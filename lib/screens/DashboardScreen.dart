import 'dart:async';

import 'package:biloteca_flutter/enums/StatCardType.dart';
import 'package:biloteca_flutter/widgets/cards/CardEstatistica.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int livrosAtrasados = 0, livrosEstoque = 0, livrosEmprestados = 0;

  late Timer _timer;
  void _startTimeout() {
    _timer = Timer(const Duration(milliseconds: 600), () {
      setState(() {
        livrosAtrasados = 5;
        livrosEstoque = 34;
        livrosEmprestados = 14;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            CardEstatistica(
                valor: livrosAtrasados, tipo: StatCardType.atrasados),
            CardEstatistica(valor: livrosEstoque, tipo: StatCardType.estoque),
            CardEstatistica(
                valor: livrosEmprestados, tipo: StatCardType.emprestados),
          ],
        ));
  }
}
