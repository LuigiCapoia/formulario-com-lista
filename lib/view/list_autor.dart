import 'package:flutter/material.dart';
import 'autor.dart'; // Importe o arquivo que contém a classe Autor

class ListAutor extends StatelessWidget {
  final List<Autor> listaAutores;

  const ListAutor({Key? key, required this.listaAutores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autores'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: listaAutores.map((autor) {
            return ListTile(
              title: Text('Nome: ${autor.nome} - Ano: ${autor.anoNascimento}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
