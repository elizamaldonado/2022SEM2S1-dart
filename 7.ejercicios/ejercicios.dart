
void main() {
    ejercicio1();
    ejercicio2();
    ejercicio3('Yo hago yoga Hoy');
    ejercicio4();
    ejercicio5();
}

void ejercicio1() {

  var ranEdades = [18, 25, 30, 40, 50, 65];
  int mayor = 0;
  int menor = ranEdades[0];
  int suma = 0;
  double promedioEdad;

  for (var element in ranEdades) {
    if (element > mayor) {
      mayor = element;
    }
    if (element < menor) {
      menor = element;
    }
    suma = suma + element;
  }

  promedioEdad = suma / ranEdades.length;

  print('La edad mayor es $mayor');
  print('La edad menor es $menor');
  print('El promedio de las edades es $promedioEdad');
}

void ejercicio2() {

  List<int> lista1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> lista2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> lista3 = [];

  for (var element in lista1) {
    if (lista2.contains(element)) {
      if (!lista3.contains(element)) {
        lista3.add(element);
      }
    }
  }
  print(lista3);
}

void ejercicio3(String palabra) {

  String auxiliar = palabra.split(' ').join('').toLowerCase();
  print(auxiliar == auxiliar.split('').reversed.join('') ? 'Si es palíndromo': 'No es palíndromo');
}

void ejercicio4() {

  /* Escriba un código en Dart que tome la lista y cree una nueva lista que contenga
  solo los elementos pares de la lista.*/
  List <int> lista1 = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  print(lista1.where((numero) => numero % 2 == 0));
}

void ejercicio5() {
  /* Realizar un programa que implemente herencia y mixin del siguiente diagrama. 
  Los resultados por consola deben evidenciar el uso de extend y mixin. Cada clase debe tener mínimo
  un método y tres atributos.*/
  
  Persona classPersona = Persona('Elizabeth', 'Maldonado Triana', 30);
  Artista artista = Artista('impresionismo', 'pintor', 10);
  Ingeniero ingeniero = Ingeniero('ingenieria electrica y mecanica', 'Continental Edison Company', 45);
  Doctor doctor = Doctor('neurocirujano', 'Seattle Grace', 'Seattle');
  Boxeador boxeador = Boxeador(50, 44, 6, 'Mike', 'Tyson', 56, 'boxeador', 'Estados Unidos', 'Iron Mike');
  
  print('${classPersona.imprimir()}\n');
  print('${artista.imprimirArtista()}\n${artista.dibujar()}\n');
  print('${ingeniero.imprimirIngeniero()}\n${ingeniero.dibujar()}\n${ingeniero.leer()}\n');
  print('${doctor.imprimirDoctor()}\n${doctor.leer()}\n${doctor.ejercitarse()}\n');
  print('${boxeador.imprimirBoxeador()}\n${boxeador.ejercitarse()}\n${boxeador.boxear()}\n');
}

class Persona {
  String nombre;
  String apellido;
  int edad;
  
  Persona(this.nombre, this.apellido, this.edad);
  
  String imprimir() {
    return 'Mi nombre es $nombre $apellido, tengo $edad años.';
  }
}

class Artista extends Persona with Dibujar {
  String estilo;
  String vocacion;
  int experiencia;
  
  Artista(this.estilo, this.vocacion, this.experiencia): super('Vincent', 'Van Gogh', 37);
  
  String imprimirArtista() {
    return '${imprimir()}\n Soy $vocacion por $experiencia años y mi estilo es el $estilo.';
  }
}

class Ingeniero extends Persona with Dibujar, Leer {
  String area;
  String empresa;
  int experiencia;
  
  Ingeniero(this.area, this.empresa, this.experiencia): super('Nikola', 'Tesla', 86);
  
  String imprimirIngeniero() {
    return '${imprimir()}\n Soy ingeniero en $area tengo $experiencia años y trabajo en $empresa.';
  }
}

class Doctor extends Persona with Leer, Ejercitarse {
  String ocupacion;
  String hospital;
  String residencia;
  
  Doctor(this.ocupacion, this.hospital, this.residencia): super('Derek', 'Shepherd', 49);
  
  String imprimirDoctor() {
    return '${imprimir()}\n Soy $ocupacion en el hospital $hospital de $residencia';
  }
}

class Atleta extends Persona {
  String deporte;
  String nacionalidad;
  String apodo;
  
  Atleta(this.deporte, this.nacionalidad, this.apodo, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  
  String imprimirAtleta() {
    return '${imprimir()}\n Soy $deporte de $nacionalidad y me apodan como $apodo.';
  }
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  int victorias;
  int kos;
  int derrotas;
  
  Boxeador(this.victorias, this.kos, this.derrotas, String nombre, String apellido, int edad, String deporte, String nacionalidad, String apodo): super(deporte, nacionalidad, apodo, nombre, apellido, edad);
  
  String imprimirBoxeador() {
    return '${imprimirAtleta()}\n Gane $victorias peleas, $kos de ellas por KO y perdi $derrotas peleas.';
  }
}

mixin Dibujar {
  String? papel;
  String? utensilios;
  int? dedicacion;
  
  String dibujar() {
    return 'Estoy dibujando.';
  }
}

mixin Leer {
  String? libro;
  String? autor;
  int? dedicacion;
  
  String leer() {
    return 'Estoy leyendo.';
  }
}

mixin Ejercitarse {
  String? dias;
  String? horario;
  int? dedicacion;
  
  String ejercitarse() {
    return 'Estoy haciendo ejercicio.';
  }
}

mixin Boxear {
  String? oponente;
  String? fecha;
  String? hora;
  
  String boxear() {
    return 'Estoy boxeando.';
  }
}