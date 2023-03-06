
import 'mensaje.dart';

class MensajeComentario extends Mensaje{

  //CONSTUCTOR

  MensajeComentario({
    required idNotificacion,
    required idRemitente,
    required idEventoReferenciado,
    required contenido
  }) : super(
    idNotificacion: idNotificacion, 
    idRemitente: idRemitente, 
    idEventoReferenciado: idEventoReferenciado, 
    contenido: contenido);

  // METODOS

  @override
  VerRemitente() {
    throw UnimplementedError();
  }

}