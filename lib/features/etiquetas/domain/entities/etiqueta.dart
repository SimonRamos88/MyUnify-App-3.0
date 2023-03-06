class Etiqueta {
  late String icon_link;
  late String nombre;
  //late Icon icono;

  Etiqueta(this.icon_link, this.nombre);

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() +
        'Etiqueta nombre: ' +
        nombre +
        '\nLink a imagen: ' +
        icon_link;
  }
}
