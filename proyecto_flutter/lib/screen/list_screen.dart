import 'package:flutter/material.dart';
import 'package:proyecto_flutter/api/film_api.dart';
import 'package:proyecto_flutter/main.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/film_class_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Container(
          child: Text("Anime List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
        backgroundColor: Colors.black54,
        body: FutureBuilder(
          future: apiLoadFilm(),
          builder: (
            BuildContext context,
            AsyncSnapshot<List<Film>> snapshot,
          ) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final userList = snapshot.data!;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (BuildContext context, int index) {
                return FilmListItem(film: userList[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
