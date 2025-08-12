import 'package:biloteca_flutter/models/emprestimo.dart';

class Usuario {
int? id;
final String nome;
final String email;
final String telefone;
final DateTime dataCadastro;
bool ativo;
List<Emprestimo> emprestimos;
Usuario({
this.id,
required this.nome,
required this.email,
this.telefone = "",
DateTime? dataCadastro,
this.ativo = true,
List<Emprestimo>? emprestimos,
}) : this.dataCadastro = dataCadastro ?? DateTime.now(), this.emprestimos =
emprestimos ?? [];

temEmprestimosAtivos() {
return emprestimos.any((emprestimo) => emprestimo.ativo); }

temEmprestimosAtrasados() {
return emprestimos.any((emprestimo) => emprestimo.estaAtrasado()); }
}