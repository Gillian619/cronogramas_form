import 'package:cronograma_form/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<Pagina> createState() => _PaginaState();
}

class _PaginaState extends State<Pagina> {
  final List<String> _lista = [''];
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista De Cursos"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _lista.length,
            itemBuilder: (BuildContext context,int index ){
              return Container(
                height: 50,
                color: Colors.cyan,
                child: Center(child: Text('${_lista[index]}')),
              );
            }
          ),
        ),
      ),
    );
  }
}
