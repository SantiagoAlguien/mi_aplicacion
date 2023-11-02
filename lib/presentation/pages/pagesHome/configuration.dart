import 'package:flutter/material.dart';

class Configuration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 60, 255, 174),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: Text('Pagina de configuracion'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            
            Navigator.of(context).pop();
          },
          child: Text('Volver a la pagina de inicio'),
        ),
      ),
    );
  }
}
