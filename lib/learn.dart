// single line function

String getFullName(String firstName, String lastName) => '$firstName $lastName';

// multi line function

String getFullNameMulti(String firstName, String lastName) {
  return '$firstName $lastName';
}

// if and else in dart
const a = 'hello';

// if else statement in dart

void conditional() {
  if (a == 'hello') {
    print('Hello');
  } else {
    print('Goodbye');
  }
}

// list

void test() {
  var list = [1, 2, 3];
  print(list.length); // 3
  list.add(4);
  print(list.length); // 4
}

// dart automatically understands the data type

void set() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  halogens.add('helium');
}

// dart support all the data type in a array

const name = {'first', 1, 3}; // tey are all supported

// map

void map() {
  var name = {'first': 'John', 'last': 'Doe'};
}

//  nullable type
void nullable() {
  String? name = null;
  print(name);
  name = 'hello';
  print(name);
}

// ternaly operator with ??

void ternary() {
  String? name = null;
  print(name ?? 'default');
  name = 'hello';
  print(name ?? 'default');
}

// enun

enum Color { red, green, blue }

enum AnimalType { cat, dog, bird }

void enumExample(AnimalType animalType) {
  switch (animalType) {
    case AnimalType.cat:
      print('Cat');
      break;
    case AnimalType.dog:
      print('Dog');
      break;
    case AnimalType.bird:
      print('Bird');
      break;
    default:
      print('Unknown');
  }
}

// enumExample(AnimalType.cat);

// Stream

Stream<String> getName() {
  return Stream.value('value');
}

Stream<String> getNamePeriodic() {
  return Stream.periodic(const Duration(seconds: 1), (x) => "value $x");
}

void streamExample() async {
  await for (final value in getName()) {
    print(value);
  }

  getNamePeriodic().listen((event) {
    print(event);
  });
  // getName().listen((event) {
  //   print(event);
  // });  // this is also correct
}

// Iterable

Iterable<int> getOneTwoThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

void iterableExample() {
  for (final value in getOneTwoThree()) {
    print(value);
  }
}
