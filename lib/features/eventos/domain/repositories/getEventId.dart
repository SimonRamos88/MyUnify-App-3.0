import 'package:cloud_firestore/cloud_firestore.dart';

//regresara un map con el objeto
Future<Map> getEventById(String idEvento) async {
  Map<String, dynamic> evento = {"Evento vacio": "vacio"};
  FirebaseFirestore db = FirebaseFirestore.instance;
  //Hacemos la consulta
  CollectionReference collectionReferenceEvento = db.collection('Evento');
  //documentsnapshot almacena solo un documento. no es como query que trae una lista
  DocumentSnapshot query =
      //doc permite buscar un documento por su id
      await collectionReferenceEvento.doc(idEvento).get();
  evento = query.data() as Map<String, dynamic>;
  return evento;
}
