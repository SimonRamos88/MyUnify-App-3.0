import 'comentario.dart';
import 'dart:collection';

class Pregunta extends Comentario {
  HashMap respuestas = new HashMap<int, Comentario>();
  Pregunta(int idContenido, String contenido, int idEscritor)
      : super(idContenido, contenido, idEscritor) {
    print('Una nueva pregunta ha nacido');
  }
}
