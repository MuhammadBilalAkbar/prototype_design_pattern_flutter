/// Method #2: How to clone an object
class Person {
  String firstName;
  String lastName;
  int age;
  String email;
  String nationality;

  Person({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.email,
    required this.nationality,
  });

  /// User clone method to clone an object's properties:
  Person clone() => Person(
        firstName: firstName,
        lastName: lastName,
        age: age,
        email: email,
        nationality: nationality,
        // If you add it later, then how will you change data everywhere to copy if you don't use clone().
      );
}

void main() {
  final person = Person(
    firstName: 'Muhammad',
    lastName: 'Bilal',
    age: 26,
    email: 'bilal@email.com',
    nationality: 'Pakistani',
  );

  final person1 = person.clone();
  print(person1.firstName);
}
