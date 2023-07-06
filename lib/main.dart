import 'dart:math';

import 'package:cronograma_form/telas/cadastro.dart';
import 'package:cronograma_form/telas/login.dart';
import 'package:cronograma_form/telas/pagina.dart';
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
          ThemeData(brightness: Brightness.dark, primarySwatch:generateMaterialColor(Palette.primary)),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/cadastro':(context) => const Home(),
        '/pagina':(context) => const Pagina()
      },
    );
  }
  // Creates a custom color material theme based

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

}class Palette {
  // Your hexadecimal color code
  static const Color primary = Color(0xFF015A13);
}

