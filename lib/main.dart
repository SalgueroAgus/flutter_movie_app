import 'package:flutter/material.dart';

import 'package:movies/src/pages/home_page.dart';
import 'package:movies/src/pages/pelicula_detalle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => homePage(),
        'detalle': (BuildContext context) => PeliculaDetalle()
      },
    );
  }
}
