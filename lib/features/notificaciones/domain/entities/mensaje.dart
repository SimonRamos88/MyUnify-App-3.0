
import 'package:myunify_app/features/notificaciones/domain/entities/notificacion.dart';

abstract class Mensaje extends Notificacion{

  int idEventoReferenciado;

  // CONSTRUCTOR

  Mensaje({
    required this.idEventoReferenciado,
    required idNotificacion,
    required idRemitente,
    contenido
  }) : super(idNotificacion: idNotificacion, idRemitente: idRemitente, contenido: contenido);

}