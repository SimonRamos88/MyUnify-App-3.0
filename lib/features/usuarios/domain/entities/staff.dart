
import 'miembro.dart';

abstract class Staff extends Miembro{

  // CONSTRUCTOR
  
  Staff({
    required user
  }):super(user: user);

  // METODOS

  @override
  void CrearEvento() {

    super.CrearEvento();
  }

  Votar(){

  }

  VerReporte(){
    
  }

}