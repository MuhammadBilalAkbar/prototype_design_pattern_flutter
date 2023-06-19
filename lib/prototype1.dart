/// Method #1: How to clone an object or create new object with same parameters.
class Person {
  String firstName;
  String lastName;
  int age;

  Person({
    required this.firstName,
    required this.lastName,
    required this.age,
  });
}

void main() {
  final person = Person(firstName: 'Muhammad', lastName: 'Bilal', age: 26);

  /// How to create another person object just like above one.
  final person1 = Person(firstName: 'Muhammad', lastName: 'Bilal', age: 26);

  /// Or other method is to copy person object:
  final person2 = Person(
      firstName: person.firstName, lastName: person.lastName, age: person.age);
  print(person.firstName);
  print(person2.firstName);
}

/// how to clone in hundred or thousand files???
/// see prototype2.dart and prototype3.dart
