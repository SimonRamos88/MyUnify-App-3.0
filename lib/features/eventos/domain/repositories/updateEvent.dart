import 'package:cloud_firestore/cloud_firestore.dart';

//regresara un map con el objeto
Future<bool> updateEventById(
    String idEvento, Map<String, dynamic> dataU) async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  //Hacemos la consulta
  CollectionReference collectionReferenceEvento = db.collection('Evento');
  //documentsnapshot almacena solo un documento. no es como query que trae una lista
  DocumentSnapshot query =
      //doc permite buscar un documento por su id
      await collectionReferenceEvento.doc(idEvento).get();
  if (query.exists) {
    collectionReferenceEvento.doc(idEvento).update(dataU);
    print('Datos actualizados');
    return true;
  } else {
    print('datos no actualizados evento invalido');
    return false;
  }
}
