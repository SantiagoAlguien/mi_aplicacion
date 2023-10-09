import 'package:flutter/material.dart';
import 'package:my_app/pages/FireBase/firebase_service.dart';


class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {

  TextEditingController nameCotroler = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Agregar persona"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller:  nameCotroler,
              decoration: const InputDecoration(
                hintText: 'Ingrese el nombre'
              )
            ),
            MaterialButton(
              onPressed: ()async{
                await addPeople(nameCotroler.text).then((value) => {
                  Navigator.of(context).pop()
                });
                
              }, child: Text("Guardar"),
              )
          ]
        ),
      ),
    );
  }
}