import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';

class FilmListItem extends StatelessWidget {
  const FilmListItem({
    super.key,
    required this.film,
    required this.parentContext,
  });

  final Film film;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        film.title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        film.status,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(parentContext).pushNamed('/filmDetailsScreen', arguments: film);
        },
        child: Image(
          image: NetworkImage(film.poster),
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          Navigator.of(parentContext).pushNamed('/filmDetailsScreen', arguments: film);
        },
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
