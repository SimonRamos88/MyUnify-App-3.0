import 'dart:io';

import 'package:flutter/material.dart';

class ViewEvent extends StatefulWidget {
  const ViewEvent({Key? key, required this.title, required this.data})
      : super(key: key);

  final Map<String, dynamic> data;

  final String title;

  @override
  State<ViewEvent> createState() => _ViewEventState();
}

class _ViewEventState extends State<ViewEvent> {
  @override
  Widget build(BuildContext context) {
    const estilo = TextStyle(fontSize: 18);
    return Scaffold(
      appBar: AppBar(
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
