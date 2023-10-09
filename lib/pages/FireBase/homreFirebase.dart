import 'package:flutter/material.dart';

//Importaciones de firebase y los servicios
import 'package:firebase_core/firebase_core.dart';
import 'firebase_service.dart';

// Sercicios 
import 'package:my_app/pages/FireBase/firebase_service.dart';



class firebasePrueba extends StatefulWidget {
  const firebasePrueba({super.key});

  @override
  State<firebasePrueba> createState() => _firebasePruebaState();
}

class _firebasePruebaState extends State<firebasePrueba> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(199, 60, 255, 174),
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        backgroundColor: Colors.transparent,
        title: Text('Pagina de firebase'),
      ),
      body: FutureBuilder(
        future: getPeople(), 
        builder: ((context, snapshot){
          if (snapshot.hasData) {
            return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                
                title: Text(snapshot.data?[index]['name']),
                onTap: () async{
                  await Navigator.pushNamed(context, "/firebaseEditName", arguments: {
                    "name": snapshot.data?[index]['name'],
                    "uid": snapshot.data?[index]['uid'],
                  });
                  setState(() {
                    
                  });
                },
              );
            },
            );
          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () async{
        await Navigator.pushNamed(context, "/firebaseAddName");
        setState((){});
        },child: const Icon(Icons.add),
      ),
    );
  }
}