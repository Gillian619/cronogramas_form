import 'package:cronograma_form/pagina.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const Cadform());
}

class Cadform extends StatelessWidget {
  const Cadform({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro De Curso',
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: const Pagina(),
    );
  }
}


