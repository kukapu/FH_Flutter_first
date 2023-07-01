void main() {
  final Map<String, dynamic> rawJason = {
    'name': 'Tony Stark',
    'power': 'Inteligencia',
    'isAlive': true,
  };

  final ironman = Hero.fromJson(rawJason);
  // final ironman =
  //     Hero(isAlive: false, name: 'Tony Stark', power: 'Inteligencia');

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    this.isAlive = true,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power ${isAlive ? 'YES!' : 'Nope'}';
  }
}
