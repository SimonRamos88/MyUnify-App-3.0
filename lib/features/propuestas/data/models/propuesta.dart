import 'dart:core';

class Propuesta {
  late int idPropuesta;
  late int idUsuarioGestor;
  late int idParcherReceptor;
  late int estado;

  Propuesta(this.idPropuesta, this.idUsuarioGestor, this.idParcherReceptor,
      this.estado);

  void AceptarPropuesta() {
    //implementar
  }

  void EliminarPropuesta() {}
}
