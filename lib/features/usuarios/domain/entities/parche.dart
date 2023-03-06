
import 'creador.dart';
import 'usuario.dart';

class Parche extends Creador {

  Usuario admin;
  String descripcion;
  Map<int, Usuario> moderadores;
  Map<int, Usuario> miembros;
  //Map<int, Propuesta > propuestas = {};
  //Map<int, MesaVotacion> votacionesActivas = {};
  //Map<int, Lugar> lugaresPriv = {};
  int isPublico;

  // CONSTRUCTORES 

  Parche({
    required idCreador, 
    required nombreCreador,
    required this.admin,
    required this.moderadores,
    required this.miembros,
    required this.descripcion,
    required this.isPublico
  }) : super(idCreador: idCreador, nombreCreador: nombreCreador);


  //METODOS

  void CrearEvento(){

  }

  void EditarEvento(){

  }

  void VerEventos(){

  }

 
}