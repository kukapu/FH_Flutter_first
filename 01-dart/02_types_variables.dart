void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  // final abilities = <String>['Transformación', 'Flexibilidad', 'Impostor'];
  final List<String> abilities = ['Transformación', 'Flexibilidad', 'Impostor'];
  final List<String> sprites = ['Normal', 'Shiny'];

  // DYNAMIC por defecto es = null
  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = 100;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
