// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';

class PricipalWidget extends StatelessWidget {
  PricipalWidget({super.key});

  String name = "";
  String descritiop = "";
  String image = "";
  String rute = "";

  @override
  Widget build(BuildContext context) {
    BoxConstraints constraints = const BoxConstraints(
      minWidth: 180,
      minHeight: 170,
    );

    BoxConstraints imagenTamano = const BoxConstraints(
      minWidth: 90,
      minHeight: 90,
    );

    // TODO: implement build
    return Container(
        constraints: constraints,
        margin: EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.of(context).pushNamed(rute);
              },
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(children: [
                Container(
                  height: 30,
                ),
                Container(
                  constraints: imagenTamano,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(image))),
                ),
                Container(
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  child: Text(
                    descritiop,
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ]),
            );
          },
        ));
  }
}

class WidgetA extends PricipalWidget {
  @override
  WidgetA({super.key});

  String name = "Descripcion";
  String descritiop = "Descripcion de la aplicacion";
  String image = "assets/descripcion.png";
  String rute = "/description";
}

class WidgetB extends PricipalWidget {
  @override
  WidgetB({super.key});

  String name = "Imagenes";
  String descritiop = "Visor de imagenes";
  String image = "assets/galeria-de-imagenes.png";
  String rute = "/imagen";
}

class WidgetC extends PricipalWidget {
  @override
  WidgetC({super.key});

  String name = "Calculadora";
  String descritiop = "Calculadora simple";
  String image = "assets/pngwing.com.png";
  String rute = "/calculate";
}

class WidgetD extends PricipalWidget {
  @override
  WidgetD({super.key});

  String name = "Mensajeria";
  String descritiop = "Ver mensajes locales";
  String image = "assets/mensage.png";
  String rute = "/messages";
}

class WidgetE extends PricipalWidget {
  @override
  WidgetE({super.key});

  String name = "Tienda";
  String descritiop = "Ver una tienda offline";
  String image = "assets/tienda.png";
  String rute = "/store";
}

class WidgetF extends PricipalWidget {
  @override
  WidgetF({super.key});

  String name = "Juego";
  String descritiop = "Juego simple";
  String image = "assets/juego.png";
  String rute = "/game";
}

class WidgetG extends PricipalWidget {
  @override
  WidgetG({super.key});

  String name = "firebasePrueba";
  String descritiop = "CRUD de firebase";
  String image = "assets/firebase.png";
  String rute = "/firebase";
}

class SettingWidget extends PricipalWidget {
  @override
  Widget build(BuildContext context) {
    String image = "assets/configuraciones.png";
    String rute = "/configuration";

    return Container(
      margin: EdgeInsets.all(10),
      height: 70,
      child: LayoutBuilder(builder: (context, constraints) {
        return MaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed(rute);
          },
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
              const SizedBox(
                height: 70,
                child: Center(
                    child: Text(
                  "Configuracion",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        );
      }),
    );
  }
}
