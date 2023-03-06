
import 'usuario.dart';

class Miembro extends Usuario{

  Usuario user;

  // CONSTRUCTOR

  Miembro({
    required this.user
  }) : super(idCreador: user.idCreador, nombreCreador: user.nombreCreador);


  // METODOS

  @override
  void CrearEvento() {
    super.CrearEvento();
  }

  SalirDelParche(){

  }

  ConsultarPropuesta(){
    
  }
}