import 'package:flutter/material.dart';
import 'package:my_app/presentation/widgets/widgetsHome.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 60, 255, 174),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        actions: const [
          SizedBox(
              width: 60,
              child: Icon(
                Icons.account_circle_rounded,
                size: 40.0,
              )),
        ],
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Text("Bienvenido Usuario",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Aqui puedes hacer tus interacciones",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(
            height: 20, // Espacio entre la descripción y los elementos
          ),
          Expanded(
            child: GridView.count(
            crossAxisCount: 2,
            children: [
              Descripcion(),
              Imagenes(),
              Calculadora(),
              Mensajeria(),
              Tienda(),
              Juego(),
              ListUser()
            ],
          )),
          Sentting()
        ]),
      ),
    );
  }
}