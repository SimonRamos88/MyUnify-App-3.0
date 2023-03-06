
import 'package:myunify_app/features/notificaciones/domain/entities/solicitud.dart';

class InvitacionEvento extends Solicitud{

  // CONSTRUCTORES

  InvitacionEvento({
    required idNotificacion,
    required idRemitente
  }) : super(idNotificacion: idNotificacion, idRemitente: idRemitente);

  // METODOS

  @override
  VerRemitente() {
    throw UnimplementedError();
  }

  @override
  Aceptar() {
    throw UnimplementedError();
  }

  @override
  Rechazar() {
    throw UnimplementedError();
  }

}