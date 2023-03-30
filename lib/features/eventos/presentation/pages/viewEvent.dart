import 'dart:io';

import 'package:flutter/material.dart';

class ViewEvent extends StatefulWidget {
  const ViewEvent({Key? key, required this.title, required this.data})
      : super(key: key);

  final Map<String, dynamic> data;

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ViewEvent> createState() => _ViewEventState();
}

class _ViewEventState extends State<ViewEvent> {
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
            Text(
              "Titulo: " + widget.data['titulo'],
              style: estilo,
              textAlign: TextAlign.center,
            ),
            Text(widget.data['creador'],
                style: estilo, textAlign: TextAlign.center),
            Text("Lugar: " + widget.data['lugar'],
                style: estilo, textAlign: TextAlign.center),
            Text(widget.data['descripcion'],
                style: estilo, textAlign: TextAlign.center),
            Text("fecha: " + widget.data['fecha'],
                style: estilo, textAlign: TextAlign.center),
            Image.network(widget.data['link_img'])
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
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
