import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myunify_app/features/eventos/domain/repositories/createEvent.dart';
import 'package:myunify_app/features/eventos/domain/repositories/getEventId.dart';
import 'features/eventos/domain/repositories/getEvents.dart';
import 'features/eventos/presentation/pages/viewEvent.dart';
import 'firebase_options.dart';

import 'dart:io';

void main() async {
  HttpOverrides.global = new PostHttpOverrides();
  //esto es necesario para poder hacer la conexión con firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Prueba de eventos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future _mostrarVitalizate() async {
    /*
    List vitalizate = await getEvents() as List;
    for (var v in vitalizate) {
      print(v['creador']);
    }
    */
    //Map evento = await getEventById("2775");
    //print(evento);
    String s = await createEvent(
        {"creador": "yo", "lugar": "cyt", "titulo": "evento por app"});
    print(s);
  }

  Widget _buildListItems(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      /*
      shape: RoundedRectangleBorder(
        //<-- SEE HERE
        side: BorderSide(width: 1),
        borderRadius: BorderRadius.circular(10),
      ), */
      title: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 0),
          //margin: EdgeInsets.only(top: 20, bottom: 20),
          decoration: BoxDecoration(border: Border.all()),
          child: Text(
            document['titulo'].replaceAll(' ', '-'),
            style: const TextStyle(fontSize: 20),
          )),
      subtitle: Container(
        //margin: EdgeInsets.only(top: 20, bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0xffddddff),
        ),
        padding: const EdgeInsets.all(0.5),
        margin: const EdgeInsets.only(bottom: 20),
        child: Text(document['lugar'], style: const TextStyle(fontSize: 15)),
      ),
      leading: SizedBox(
          height: 100, width: 100, child: Image.network(document['link_img'])),
      dense: true,
      visualDensity: const VisualDensity(vertical: 4),
      onTap: () {
        print('la id del documento es: ' + document.id);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ViewEvent(
                data: document.data() as Map<String, dynamic>, title: '')));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Evento').snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Text(
              'Cargando...',
              style: TextStyle(fontSize: 15),
            );
          }
          return ListView.builder(
              itemExtent: 170.0,
              shrinkWrap: true,
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (context, index) =>
                  _buildListItems(context, snapshot.data!.docs[index]));
        },
        /*ListView.builder(
              itemExtent: 80.0,
              itemCount: _bandList.length,
              itemBuilder: (context, index) => _buildListItems(context,_bandList[index]),
              */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mostrarVitalizate();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
