class User {
  String nombre;
  int edad;
  List<String> profesiones;

  User({this.nombre, this.edad, this.profesiones});

  User copyWith({String nombre, int edad, List<String> profesiones}) {
    return User(
        nombre: nombre ?? this.nombre,
        edad: edad ?? edad,
        profesiones: profesiones ?? this.profesiones);
  }
}
