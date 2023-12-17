import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';


class FilmListItem extends StatelessWidget {
  const FilmListItem({
    super.key,
    required this.film,
  });


  final Film film;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${film.title}"),
      // subtitle: Text(film.email),
      // leading: CircleAvatar(
      //   backgroundImage: NetworkImage(film.avatarUrl),
      // ),
    );
  }
}
