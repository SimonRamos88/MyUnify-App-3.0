
import 'voto.dart';

class MesaVotacion {
  
  int idMesa;
  // Propuesta propuesta;
  Map<int,Voto> votos = {};
  String descripcion;
  int duracion;

  // CONSTRUCTOR
  MesaVotacion({
    required this.idMesa,
    //required this.propuesta,
    required this.descripcion,
    required this.duracion
  });

  // METODOS

  DarVeredicto(){

    //this.propuesta.AceptarPropuesta();
  }

}