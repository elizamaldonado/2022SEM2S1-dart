void main() {
    print(obtenerNombre('Elizabeth'));
    print(obtenerNombreApellido('Elizabeth', 'Maldonado Triana'));
    print(obtenerNombreApellidoNameParameter(apellido: 'Maldonado Triana'));
}

String obtenerNombre(String valor) {
  return 'Mi nombre es $valor';
}

String obtenerNombreApellido(String nombre, String apellido) {
  return 'Mi nombre es $nombre $apellido';
}

String obtenerNombreApellidoNameParameter({ String? nombre, required String apellido, int edad = 0 }) {
  return 'Mi nombre es $nombre $apellido';
}

var miFuncionAnonima = (String valor) {
  return 'El valor es $valor';
}
