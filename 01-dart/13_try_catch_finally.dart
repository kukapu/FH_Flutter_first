void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://api.nasa.com/aliens');
    print('Exito: $value');
  } on Exception catch (err) {
    print('Tenemos una excepcion: $err');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Fin Try Catch');
  }

  // httpGet('https://api.nasa.com/aliens').then((data) {
  //   print(data);
  // }).catchError((err) {
  //   print('Error: $err');
  // });

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el url');
  // throw 'Error en la peticion http';
  // return 'Respuesta del servidor';

  // return Future.delayed(const Duration(seconds: 1), () {
  //   throw 'Error en la peticion http';
  // return 'Respuesta del servidor';
  // });
}
