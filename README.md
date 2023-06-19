# prototype_design_pattern_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1. Research: Prototype Design Pattern Flutter

- Keywords:
    - prototype design pattern flutter
    - prototype design pattern flutter example
- Video Title: Prototype Design Pattern in Flutter | Creational Design Patterns in Flutter |
  Prototype Design Pattern in Flutter with Example

## 2. Research: Competitors

**Flutter Videos/Articles**

- 2.5K: https://youtu.be/ueYQrn-trLU
- https://medium.com/flutter-community/flutter-design-patterns-14-prototype-7d7d18bcf643
- https://kazlauskas.dev/flutter-design-patterns-14-prototype/
- https://scottt2.github.io/design-patterns-in-dart/prototype/
- https://dart.academy/creational-design-patterns-for-dart-and-flutter-prototype/
- https://www.kodeco.com/books/design-patterns-by-tutorials/v3.0/chapters/14-prototype-pattern

**Android/Swift/React Videos**

- 124K: https://youtu.be/nZ76x13Nm8Q
- 214K: https://youtu.be/AFbZhRL0Uz8
- 1.3K: https://youtu.be/rriiXRdc0HQ
- 4.5K: https://youtu.be/mTelfA9ccXE
- 16K: https://youtu.be/DcFhITC9v0E
- 14K: https://youtu.be/CcQAtNzlUQE
- 5.1K: https://youtu.be/hX4tLv59MKY
- 23K: https://youtu.be/j9TBTJFuRr0
- 35K: https://youtu.be/f1BG1tkqZQU

**Great Features**

- Prototype design pattern is a creational design pattern that focuses on creating objects by
  cloning or copying existing objects rather than using a traditional approach of constructing
  objects using constructors. The main idea behind the Prototype pattern is to create new objects by
  copying existing ones, thus avoiding the overhead of creating objects from scratch.
- This can be useful in situations where the creation of a new object is expensive or
  time-consuming, or when the exact type of object to be created is not known in advance.
- Other great features are following:
    - Object creation without invoking constructors
    - Dynamic object creation
    - Reduced complexity
    - Performance improvement
    - Customizable object creation
    - Encapsulation
    - Runtime flexibility
    - Cloning objects with complex structures
    - Preserving object relationships
    - Separation of concerns

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/13887704/whats-the-point-of-the-prototype-design-pattern
- https://stackoverflow.com/questions/33083700/when-to-use-prototype-design-pattern

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video lesson, you will learn how to use Prototype design pattern for creating or cloning
   objects without invoking constructors or initializing objects again and again.
2. Main points:
    - `prototype1.dart` file clones an object or creates new object with same parameters without.
    - `prototype2.dart` file uses clone method to clone an object.
    - `prototype3.dart` file uses copyWith method to clone an object.
3. Overall, the Prototype design pattern provides a flexible and efficient way to create objects by
   cloning existing ones. It promotes code reusability, encapsulation, and runtime flexibility,
   making it a valuable pattern in many software development scenarios.

**The Structured Main Content**

# Prototype Design Pattern

## Definition

Specify the kinds of objects to create using a prototypical instance, and create new objects by
copying this prototype.

Prototype design pattern is a creational design pattern that focuses on creating objects by cloning
or copying existing objects rather than using a traditional approach of constructing objects using
constructors. The main idea behind the Prototype pattern is to create new objects by copying
existing ones, thus avoiding the overhead of creating objects from scratch.

## Analysis

The analysis phase in the Prototype design pattern is crucial for identifying the objects that
should support cloning and understanding the requirements and complexities associated with the
cloning process in your specific application. It lays the foundation for defining the common
interface or base class and establishes a clear understanding of how objects should be cloned.

## Implementation

1. In `prototype1.dart` file, a Person class with default constructor is defined:

```dart
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
```

To create an object of Person we write:

```dart

final person = Person(firstName: 'Muhammad', lastName: 'Bilal', age: 26);
```

But what if we want to create another person with the same properties?

```dart

final person1 = Person(firstName: 'Muhammad', lastName: 'Bilal', age: 26);
```

Other method is to copy properties of `person` object:

```dart 
  final person2 = Person(
      firstName: person.firstName, lastName: person.lastName, age: person.age);
  print(person.firstName);
  print(person2.firstName);
```

2. `prototype2.dart` explain that if we add another parameter in person class then we have to change
   it everywhere where its constructor is initialized. For this reason clone method is introduced
   here:

```dart
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
  Person clone() =>
      Person(
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
```

3. `prototype3.dart` file explains `copyWith` method. This method is useful if we want to clone an
   object and change some parameters.

   You can make the base class immutable with import of `material` library and then make parameters
   final.

```dart 
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
```

copyWith method:

```dart 
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
```

`main` method:

```dart
void main() {
  const person = Person(
    firstName: 'Muhammad',
    lastName: 'Bilal',
    age: 26,
    email: 'bilal@email.com',
    nationality: 'Pakistani',
  );

  final person3 = person.copyWith(lastName: 'Akbar'); // This is best method to clone an object.
  print(person.firstName); // Prints Muhammad
  print(person3.firstName); // Prints Muhammad
  print(person3.lastName); // Prints Akbar
}
```