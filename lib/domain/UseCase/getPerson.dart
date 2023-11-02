
// Similarmente, puedes tener use cases para addPeople, updatePeople y deletePeople.
import 'package:my_app/domain/Entities/person.dart';
import 'package:my_app/domain/repositories/person_repository.dart';

class GetPeople {
  final PersonRepository repository;

  GetPeople(this.repository);

  Future<List<Person>> call() {
    return repository.getPeople();
  }
}