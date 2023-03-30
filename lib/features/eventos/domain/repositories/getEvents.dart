import 'package:cloud_firestore/cloud_firestore.dart';

// crear una funcion que nos traiga la lista de datos

//Tenemos que hacer una promesa: Future:

Future<List> getEvents() async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  List eventos = [];
  //llamado a la base de datos. Primero le aclaramos a que coleccion llamaremos
  CollectionReference collectionReferenceEventos = db.collection('Evento');

  //Ahora hacemos la consulta
  //QuerySnapshot es un objeto que contiene el resultado de una consulta. Tambien
  //puede ser de tipo final
  QuerySnapshot queryEventos = await collectionReferenceEventos
      //es la misma estructura de la consulta que en python
      .where("creador", isEqualTo: "Programa Vitalizate")
      .get();
  for (var evento in queryEventos.docs) {
    //con docs traemos los documentos
    // y para obtener los datos de este documento usamos data()
    eventos.add(evento.data());
  }
  return eventos;
}
