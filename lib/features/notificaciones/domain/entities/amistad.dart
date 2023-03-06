
import 'solicitud.dart';

class Amistad extends Solicitud{

  int idReceptor;
  int estado;

  // CONSTRUCTOR

  Amistad({
    required idNotificacion,
    required idRemitente,
    required this.idReceptor,
    this.estado = 2
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