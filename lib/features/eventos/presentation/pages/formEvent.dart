import 'dart:io';

import 'package:flutter/material.dart';

import '../../domain/repositories/createEvent.dart';

class FormEvent extends StatefulWidget {
  const FormEvent({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<FormEvent> createState() => _FormEventState();
}

class _FormEventState extends State<FormEvent> {
  TextEditingController controllerTitulo = TextEditingController();
  TextEditingController controllerCreador = TextEditingController();
  TextEditingController controllerFecha = TextEditingController();
  TextEditingController controllerDesc = TextEditingController();
  TextEditingController controllerLink = TextEditingController();
  TextEditingController controllerLugar = TextEditingController();

//Esta es la sintaxis del controller

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    const estilo = TextStyle(fontSize: 18);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerCreador,

//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Creador Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerDesc,
//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Descripcion Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerFecha,
//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Fecha Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerLink,
//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Link Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerLugar,
//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Lugar Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextField(
                controller: controllerTitulo,
//el controller es lo que nos permite tomar los datos con controller.text
                decoration: InputDecoration(
                  labelText: "Titulo Evento",
//esto es para que se vea bonito
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                )),
            Container(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  _guardarDatos();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue[100]),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Guardar Evento",
                    style: estilo,
                  ),
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> _guardarDatos() async {
    print(controllerCreador.text);
    print(controllerCreador.value);
    Map<String, dynamic> datos = {
      "creador": controllerCreador.text,
      "titulo": controllerTitulo.text,
      "descripcion": controllerDesc.text,
      "fecha": controllerFecha.text,
      "link_img": controllerLink.text,
      "lugar": controllerLugar.text,
    };
    print('datos enviados');
    await createEvent(datos);
    setState(() {
      Navigator.pop(context);
    });
  }
}

class PostHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
