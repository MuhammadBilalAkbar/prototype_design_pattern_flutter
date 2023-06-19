// import 'package:flutter/material.dart';

// @immutable //use final keyword with parameters if if your class is immutable.
class Person {
  final String firstName;
  final String lastName;
  final int age;
  final String nationality;
  final String email;

  const Person({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.nationality,
    required this.email,
  });

  /// copyWith method
  Person copyWith({
    String? firstName,
    String? lastName,
    int? age,
    String? nationality,
    String? email,
// do not write required because we may/can change only one property of person class.
  }) {
    return Person(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      age: age ?? this.age,
      nationality: nationality ?? this.nationality,
      email: email ?? this.email,
    );
  }
}

void main() {
  const person = Person(
    firstName: 'Muhammad',
    lastName: 'Bilal',
    age: 26,
    email: 'bilal@email.com',
    nationality: 'Pakistani',
  );

  final person3 = person.copyWith(
      lastName: 'Akbar'); // This is best method to clone an object.
  print(person.firstName); // Prints Muhammad
  print(person3.firstName); // Prints Muhammad
  print(person3.lastName); // Prints Akbar
}
