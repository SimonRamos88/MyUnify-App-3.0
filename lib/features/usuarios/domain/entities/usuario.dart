import 'dart:collection';

import '../../../notificaciones/domain/entities/notificacion.dart';
import 'creador.dart';

class Usuario extends Creador{

  String apodo;
  String correo;
  String instagram;
  //Map<int, AbstractEvento> = HashMap():
  Map<int, Usuario> amigos = {};
  Map<int, Notificacion> notificaciones = {};

  //CONSTRUCTOR

  Usuario({
    required idCreador,
    required nombreCreador,
    this.apodo = "",
    this.correo = "",
    this.instagram = "",
  }) : super(idCreador : idCreador, nombreCreador: nombreCreador);

  // METODOS

  CrearEvento(){

  }

  EditarEvento(){


  }

  EliminarEvento(){


  }

  Comentar(){


  }

  EliminarAmigo(){


  }


  AgregarAmigo(){


  }

  EliminarSolicitudEnviada(){


  }

  EliminarAsistencia(){


  }


  CrearParche(){

  }

  UnirseParche(){


  }
}