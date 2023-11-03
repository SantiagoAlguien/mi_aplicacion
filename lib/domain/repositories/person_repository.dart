import 'package:my_app/domain/Entities/person.dart';

abstract class PersonRepository {
  Future<List<Person>> getPeople();
  Future<void> addPerson(String name);
  Future<void> updatePerson(String uid, String newName);
  Future<void> deletePerson(String uid);
}