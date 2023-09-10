import 'package:flutter/material.dart';
import 'package:my_app/widgets/widgetsHome.dart';

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
          child: Stack(
            children: [
              const Positioned(
                  child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bienvenido Usuario",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
              const Positioned(
                  top: 40,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Aqui puedes hacer tus interaciones",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  )),
              Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [WidgetA(), WidgetB(), WidgetC()],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [WidgetD(), WidgetE(), WidgetF()],
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Align(
                    alignment: Alignment.bottomCenter, child: SettingWidget()),
              )
            ],
          ),
        ));
  }
}
