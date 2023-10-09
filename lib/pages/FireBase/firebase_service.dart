import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async { //esta funcion trae toda la informacion de la base de datos
  List people = [];

  CollectionReference collectionReferencePeople = db.collection('people');

  QuerySnapshot queryPeople = await collectionReferencePeople.get();

  queryPeople.docs.forEach((documento) {
      people.add(documento.data());
  });

  return people;
}

Future<void> addPeople (String name) async{
  await db.collection("people").add({"name":name});
}
