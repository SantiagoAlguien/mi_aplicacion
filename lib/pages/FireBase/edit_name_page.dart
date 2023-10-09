import 'package:flutter/material.dart';
import 'package:my_app/pages/FireBase/firebase_service.dart';


class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});

  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {

  TextEditingController nameCotroler = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {

    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nameCotroler.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Editar persona"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller:  nameCotroler,
              decoration: const InputDecoration(
                hintText: 'Ingrese la modificacion'
              )
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: ()async{
               await updatePeople(arguments['uid'], nameCotroler.text).then((value) => {
                Navigator.pop(context)
               });
               
              }, child: Text("Actualizar"),
              )
          ]
        ),
      ),
    );
  }
}