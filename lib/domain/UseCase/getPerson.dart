
// Similarmente, puedes tener use cases para addPeople, updatePeople y deletePeople.
import 'package:my_app/domain/Entities/person.dart';
import 'package:my_app/domain/repositories/person_repository.dart';

class GetPeopleUseCase {
  final PersonRepository repository;

  GetPeopleUseCase(this.repository);

  Future<List<Person>> call() async {
    return await repository.getPeople();
  }
}