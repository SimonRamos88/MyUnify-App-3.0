import 'package:cloud_firestore/cloud_firestore.dart';

//regresara un map con el objeto
Future<bool> deleteEventById(String idEvento) async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  //Hacemos la consulta
  CollectionReference collectionReferenceEvento = db.collection('Evento');
  //documentsnapshot almacena solo un documento. no es como query que trae una lista
  DocumentSnapshot query =
      //doc permite buscar un documento por su id
      await collectionReferenceEvento.doc(idEvento).get();
  if (query.exists) {
    collectionReferenceEvento.doc(idEvento).delete();
    print('Datos borrados');
    return true;
  } else {
    print('datos no borrados id invalido');
    return false;
  }
}
