import 'package:flutter/material.dart';

//
import 'package:firebase_core/firebase_core.dart';
import 'firebase_service.dart';

// Sercicios 
import 'package:my_app/pages/pagesHome/FireBase/firebase_service.dart';



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

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

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
              return Text(snapshot.data?[index]['name']);
            },
            );
          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        })
      )
    );
  }
}