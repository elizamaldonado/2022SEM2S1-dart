void main() {
    try {
    String elNombre = obtenerNombre('Elizabeth');
    print(elNombre);
  } on FormatException catch (e) {
    print('Se present{o una excepci{on FormatException');
  } on Exception catch (e) {
    print('Se present{o una excepción Exception');
  } catch (e) {
    print('Se present{o una excepción');
  } finally {
    print('Este es el finally');
  }
}

String obtenerNombre(String nombre) {
  if (nombre == 'Elizabeth') {
    throw FormatException('Este nombre no está permitido');
  }
  if (nombre == 'Elizabeth') {
    throw Exception('Este nombre no está permitido');
  }
  return 'Mi nombre es $nombre';
}
