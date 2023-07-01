void main() async {
  print('Inicio del programa');

  final value = await httpGet('https://api.nasa.com/aliens');
  print(value);
  // httpGet('https://api.nasa.com/aliens').then((data) {
  //   print(data);
  // }).catchError((err) {
  //   print('Error: $err');
  // });

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Respuesta del servidor';

  // return Future.delayed(const Duration(seconds: 1), () {
  //   throw 'Error en la peticion http';
  // return 'Respuesta del servidor';
  // });
}
