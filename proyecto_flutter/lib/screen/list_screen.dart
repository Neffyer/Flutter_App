import 'package:flutter/material.dart';
import 'package:proyecto_flutter/api/film_api.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/film_class_item.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        body: Stack(
          children: [
            FutureBuilder(
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
          ],
        ),
      ),
    );
  }
}
