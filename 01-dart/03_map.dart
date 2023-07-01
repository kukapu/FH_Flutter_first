void main() {
  final pokemon = <String, dynamic>{
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Transformación', 'Flexibilidad', 'Impostor'],
    'sprites': {
      1: 'Normal.png',
      2: 'Shiny.png',
    }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');

  print('Normal: ${pokemon['sprites'][1]}');
  print('Shiny: ${pokemon['sprites'][2]}');

  // var sprites = pokemon['sprites'] as Map<int, String>;
  // print('Normal: ${sprites[1]}');
  // print('Shiny: ${sprites[2]}');
}
