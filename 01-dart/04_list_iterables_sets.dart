void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Index 0: ${numbers.first}');
  print('Index ultimo: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Lista: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreater5 = numbers.where((number) => number > 5);
  // final numbersGreater5 = numbers.where((int number) => number > 5);
  print('>5 iterable: $numbersGreater5');
  print('>5 Set: ${numbersGreater5.toSet()}');
}
