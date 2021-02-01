import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  final peliculas = [
    'peli1',
    'peli2',
    'peli3',
    'peli4',
    'peli5',
    'peli6',
    'peli7'
  ];

  final peliculasRecientes = ['peli1', 'peli2'];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Acciones de appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izq. del appbar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Resultados de busqueda
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Sugerencias de busqueda

    final listaSugerida = (query.isEmpty)
        ? peliculasRecientes
        : peliculas
            .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: listaSugerida.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: Icon(Icons.movie),
          title: Text(listaSugerida[i]),
          onTap: () {},
        );
      },
    );
  }
}
