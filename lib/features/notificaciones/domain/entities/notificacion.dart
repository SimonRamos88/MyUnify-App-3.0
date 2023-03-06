

abstract class Notificacion {

  int idNotificacion;
  int idRemitente;
  String contenido;

  // CONSTRUCTORES
  Notificacion({
    required this.idNotificacion,
    required this.idRemitente,
    this.contenido = " "
  });

  // METODOS

  VerRemitente();

}