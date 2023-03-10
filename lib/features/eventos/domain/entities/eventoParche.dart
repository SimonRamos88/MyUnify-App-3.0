import 'dart:collection';

import '../../../comentarios/domain/entities/comentario.dart';
import '../../../etiquetas/domain/entities/etiqueta.dart';
import '../../../usuarios/domain/entities/creador.dart';
import '../../../lugares/domain/entities/lugar.dart';
import '../../../usuarios/domain/entities/usuario.dart';
import 'abstractEvento.dart';

class EventoParche extends abstractEvento {
  @override
  late int idEvento;
  @override
  late int esPublico;
  @override
  late int comentariosPermitidos;
  @override
  late Creador autor;
  @override
  late String nombre;
  @override
  late String fecha;
  @override
  late String descripcion;
  @override
  late Lugar lugar;
  @override
  late int aforo;
  @override
  late HashMap comentarios = HashMap<int, Comentario>();
  @override
  late HashMap usuarios = HashMap<int, Usuario>();
  @override
  late HashMap etiquetas;

  late String tipo;

  EventoParche(
      this.tipo,
      this.nombre,
      this.aforo,
      this.autor,
      this.comentariosPermitidos,
      this.descripcion,
      this.esPublico,
      this.fecha,
      this.idEvento,
      this.lugar,
      this.etiquetas);

  @override
  void AgregarLugar() {
    // TODO: implement AgregarLugar
  }

  @override
  void ConfigurarPQR() {
    // TODO: implement ConfigurarPQR
  }

  @override
  void CrearLugar() {
    // TODO: implement CrearLugar
  }

  @override
  void InvitarUsuarios() {
    // TODO: implement InvitarUsuarios
  }

  @override
  void PublicarEvento() {
    // TODO: implement PublicarEvento
  }
}
