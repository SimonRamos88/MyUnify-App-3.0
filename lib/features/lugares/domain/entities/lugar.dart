class Lugar {
  late int idLugar;
  late String direccion;
  late String nombre;
  late int aforo;
  late int aireLibre;
  late int cover;

  Lugar(this.idLugar, this.aforo, this.aireLibre, this.direccion, this.cover,
      this.nombre);

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() +
        'Lugar nombre: ' +
        nombre +
        '\nDireaccion: ' +
        direccion;
  }

  void consultarLlegada() {}
}
