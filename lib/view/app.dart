import 'package:flutter/material.dart' ;
import 'package:testeee/view/form_autor.dart';
//import 'package:testeee/view/list_autor.dart';

class App extends StatelessWidget {

 const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const FormAutor(),
      theme: ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: Colors.white,
        primarySwatch: Colors.red,
        accentColor:  Colors.black,
      ),
      ),
      );
  }
}