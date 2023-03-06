
import '../../../usuarios/domain/entities/usuario.dart';

class Voto{

  int idVoto;
  Usuario usuario;
  int voto;

  // CONSTRUCTOR
  Voto({
    required this.idVoto,
    required this.usuario,
    required this.voto
  });

}