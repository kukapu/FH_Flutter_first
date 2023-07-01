void main() {
  print(greetEveryone());

  print('suma: ${addTwoNumbers(1, 2)}');

  print(greetPerson());
  print(greetPerson(name: 'Onizuka', age: 22));
}

// Tratar de tipar todo lo posible
String greetEveryone() {
  return 'Hello everyone!';
}

String arrowGreetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int arrowAddTwoNumbers(int a, int b) => a + b;

int addTwoNumbersWithOptionalParameters(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({String name = 'Fernando', int age = 0}) {
  return 'Hello $name, you are $age years old';
}

String greetPersonRequire({required String name, int age = 0}) {
  return 'Hello $name, you are $age years old';
}
