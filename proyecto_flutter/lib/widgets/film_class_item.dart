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
      leading: SizedBox(
        width: 50,
        child: Image(
          image: NetworkImage(film.poster),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white12,
      ),
    );
  }
}
