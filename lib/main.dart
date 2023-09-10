import 'package:flutter/material.dart';
import 'package:my_app/pages/pagesHome/calculate.dart';
import 'package:my_app/pages/pagesHome/configuration.dart';
import 'package:my_app/pages/home.dart';
import 'package:my_app/pages/pagesHome/description.dart';
import 'package:my_app/pages/pagesHome/game.dart';
import 'package:my_app/pages/pagesHome/imagen.dart';
import 'package:my_app/pages/pagesHome/messages.dart';
import 'package:my_app/pages/pagesHome/store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MyHomePage(),
        "/home": (BuildContext context) => MyHomePage(),
        "/description": (BuildContext context) => Description(),
        "/configuration": (BuildContext context) => Configuration(),
        "/imagen": (BuildContext context) => Imagenes(),
        "/calculate": (BuildContext context) => Calculadora(),
        "/messages": (BuildContext context) => Menssages(),
        "/store": (BuildContext context) => Store(),
        "/game": (BuildContext context) => Game(),
      },
    );
  }
}
