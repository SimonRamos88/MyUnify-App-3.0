
import 'notificacion.dart';

abstract class Solicitud extends Notificacion{

  //CONSTRUCTOR

  Solicitud({
    required idNotificacion,
    required idRemitente
  }): super(idNotificacion: idNotificacion, idRemitente: idRemitente);

  // METODOS

  Aceptar();

  Rechazar();
}