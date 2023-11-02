import 'package:my_app/domain/Entities/person.dart';

class PersonRepository {
  final PersonDataSource dataSource;

  PersonRepository(this.dataSource);

  Future<List<Person>> getPeople() {
    return dataSource.getPeopleFromFirestore();
  }
}