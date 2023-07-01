void main() {
  // final Hero wolverine = Hero('Logan', 'Regeneración');
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');

  print(wolverine);
  print(wolverine.toString()); // No hace falta lo hace por default en print
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Hero(this.name, this.power);
  Hero({required this.name, this.power = 'Sin poder'});

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override
  String toString() => '$name - $power';
}
