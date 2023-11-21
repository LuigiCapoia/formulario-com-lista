import 'package:flutter/material.dart';
import 'package:testeee/components/my_inputs.dart';
import 'autor.dart'; 
import 'list_autor.dart';

class FormAutor extends StatefulWidget {
  const FormAutor({Key? key}) : super(key: key);

  @override
  State<FormAutor> createState() => _FormAutorState();
}

class _FormAutorState extends State<FormAutor> {
  final TextEditingController ctrlNome = TextEditingController();
  final TextEditingController ctrlAno = TextEditingController();
  List<Autor> listaAutores = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyInputs(
              controller: ctrlNome,
              label: 'Nome',
              hint: 'Informe o nome do autor',
            ),
            MyInputs(
              controller: ctrlAno,
              label: 'Ano',
              hint: 'Informe o ano de nascimento do autor',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ou MainAxisAlignment.spaceAround
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      listaAutores.add(Autor(
                        nome: ctrlNome.text,
                        anoNascimento: int.parse(ctrlAno.text),
                      ));
                      ctrlNome.clear();
                      ctrlAno.clear();
                    });
                  },
                  child: Text('Adicionar Autor'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navegar para a página de lista de autores, passando a lista
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListAutor(listaAutores: listaAutores),
                      ),
                    );
                  },
                  child: Text('Ver Lista de Autores'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
