import '../../data/models/creador.dart';
import '../../data/models/lugar.dart';
import 'dart:collection';

abstract class abstractEvento {
  late int idEvento;
  late int esPublico;
  late int comentariosPermitidos;
  late Creador autor;
  late String nombre;
  late String fecha;
  late String descripcion;
  late Lugar lugar;
  late int aforo;
  late HashMap comentarios;
  late HashMap usuarios;
  late HashMap etiquetas;

  void PublicarEvento();
  void InvitarUsuarios();
  void AgregarLugar();
  void CrearLugar();
  void ConfigurarPQR();
}