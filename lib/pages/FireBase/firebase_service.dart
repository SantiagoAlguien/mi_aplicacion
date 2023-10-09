import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//lista de los usuarios en la base de datos
Future<List> getPeople() async { //esta funcion trae toda la informacion de la base de datos
  List people = [];
  
  QuerySnapshot querySnapshot = await db.collection('people').get();
  for (var doc in querySnapshot.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person ={
      "name":data['name'],
      "uid":doc.id
    };
    people.add(person);
  }

  return people;
}

//funcion para agregar personas 
Future<void> addPeople (String name) async{
  await db.collection("people").add({"name":name});
}

//funcion para actualizar personas
Future<void> updatePeople (String uid, String newName) async{
  await db.collection("people").doc(uid).set({"name":newName});

}

//funcion para eliminar personas

Future<void> deletePeople(String uid) async {
  await db.collection("people").doc(uid).delete();
}
