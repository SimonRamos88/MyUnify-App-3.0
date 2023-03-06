

import 'mensaje.dart';

class MensajeEdicionEvento extends Mensaje{

  //CONSTUCTOR

  MensajeEdicionEvento({
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