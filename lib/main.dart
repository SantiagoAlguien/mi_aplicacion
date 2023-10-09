import 'package:flutter/material.dart';
import 'package:my_app/index.dart';

//importaciones de firebase 
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {//funcion para iniciar firebase 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => MyHomePage(),
        "/description": (BuildContext context) => Description(),
        "/configuration": (BuildContext context) => Configuration(),
        "/imagen": (BuildContext context) => Imagenes(),
        "/calculate": (BuildContext context) => Calculadora(),
        "/messages": (BuildContext context) => Menssages(),
        "/store": (BuildContext context) => Store(),
        "/game": (BuildContext context) => Game(),
        "/firebase": (BuildContext context) => firebasePrueba(),
        "/firebaseAddName": (BuildContext context) => AddNamePage(),
      },
    );
  }
}