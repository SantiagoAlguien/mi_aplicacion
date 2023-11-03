import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_app/domain/Entities/person.dart';
import 'package:my_app/domain/repositories/person_repository.dart';

class PersonRepositoryImpl implements PersonRepository {
  final FirebaseFirestore db;

  PersonRepositoryImpl(this.db);

  @override
  Future<List<Person>> getPeople() async {
    try {
      QuerySnapshot querySnapshot = await db.collection('people').get();
      var people = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        return Person(uid: doc.id, name: data['name'] ?? '');
      }).toList();
      return people;
    } catch (e) {
      // Aquí manejarías el error, por ejemplo, lanzando una excepción personalizada
      throw Exception('Error al obtener personas');
    }
  }

  @override
  Future<void> addPerson(String name) async {
    await db.collection("people").add({"name": name});
  }

  @override
  Future<void> updatePerson(String uid, String newName) async {
    await db.collection("people").doc(uid).update({"name": newName});
  }

  @override
  Future<void> deletePerson(String uid) async {
    await db.collection("people").doc(uid).delete();
  }
}
