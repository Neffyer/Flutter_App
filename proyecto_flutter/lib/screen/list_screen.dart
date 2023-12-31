import 'package:flutter/material.dart';
import 'package:proyecto_flutter/api/film_api.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/cosas.dart';
import 'package:proyecto_flutter/widgets/film_class_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 23, 23, 23),
        body: Stack(
          children: [
            const Cosas(),
            const Padding(
              padding: EdgeInsets.only(top: 230.0, left: 20),
              child: Text("Featured",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 290.0),
              child: FutureBuilder(
                future: apiLoadFilm(),
                builder: (
                  BuildContext context,
                  AsyncSnapshot<List<Film>> snapshot,
                ) {
                  if (!snapshot.hasData) {
                    return const Center(
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
          ],
        ),
      ),
    );
  }
}
