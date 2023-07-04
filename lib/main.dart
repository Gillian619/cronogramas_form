import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController id_curso = TextEditingController();
  final TextEditingController descricao_curso = TextEditingController();
  final TextEditingController carga_horaria_curso = TextEditingController();
  final TextEditingController modalidade = TextEditingController();
  final TextEditingController eixo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BaseApp"),
        backgroundColor: const Color.fromRGBO(22, 85, 140, 14),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Form(
              key: _formkey,
              child: Column(children: [
                TextFormField(
                  controller: id_curso,
                  decoration: const InputDecoration(labelText: "Curso", border: OutlineInputBorder(),prefixIcon: Icon(Icons.abc)),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return "campo obrigatório";
                      }
                    },
                ),
                TextFormField(
                  controller: descricao_curso,
                  decoration: const InputDecoration(labelText: "Descrição", border: OutlineInputBorder(),prefixIcon: Icon(Icons.abc)),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return "campo obrigatório";
                      }
                    },
                ),
                TextFormField(
                    controller: carga_horaria_curso,
                    decoration:
                        const InputDecoration(labelText: "Carga Horária", border: OutlineInputBorder(),prefixIcon: Icon(Icons.abc)),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "campo obrigatório";
                      }
                    },
                        ),
                TextFormField(
                  controller: modalidade,
                  decoration: const InputDecoration(labelText: "Modalidade", border: OutlineInputBorder(),prefixIcon: Icon(Icons.abc)),
                  validator: (value) {
                      if (value!.isEmpty) {
                        return "campo obrigatório";
                      }
                    },
                ),
                TextFormField(
                  controller: eixo,
                  decoration:
                      const InputDecoration(labelText: "Area De Conhecimento", border: OutlineInputBorder(),prefixIcon: Icon(Icons.abc)),
                      validator: (value) {
                      if (value!.isEmpty) {
                        return "campo obrigatório";
                      }
                    },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Fluttertoast.showToast(
                          msg: "Curso Cadastrado com sucesso",
                          gravity: ToastGravity.TOP_RIGHT,
                          backgroundColor: Colors.amber,
                        );
                      }
                    },
                    child: const Text("Cadastrar"))
              ])),
        ),
      ),
    );
  }
}
