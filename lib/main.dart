import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reproductor Externo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Función para lanzar la URL en el navegador
  Future<void> _launchURL() async {
    const url =
        'https://www.capoplayer.net/play/winsportsplus.php'; // La URL que proporcionaste
    if (await canLaunch(url)) {
      await launch(url); // Lanza la URL en el navegador del dispositivo
    } else {
      throw 'No se puede abrir la URL $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Abrir URL en navegador')),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: Text('Abrir Win Sports Plus'),
        ),
      ),
    );
  }
}
