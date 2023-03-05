import '../../../eventos/data/models/abstractEvento.dart';
import 'propuesta.dart';

class PropuestaEvento extends Propuesta {
  late abstractEvento evento;

  PropuestaEvento(int idPropuesta, int idUsuarioGestor, int idParcheReceptor,
      int estado, this.evento)
      : super(idPropuesta, idUsuarioGestor, idParcheReceptor, estado);

  @override
  void AceptarPropuesta() {
    //implementar
  }
}
