import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/screen/film_details_screen.dart';

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
      leading: GestureDetector(
          onTap: () {
            // Navegar a la segunda pantalla al hacer clic en el SizedBox
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilmDetailsScreen()),
            );
          },
        child: Image(
          image: NetworkImage(film.poster),
        ),
      ),
      trailing: GestureDetector(
          onTap: () {
            // Navegar a la segunda pantalla al hacer clic en el SizedBox
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FilmDetailsScreen()),
            );
          },
          child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white12,
      ),
    ),
    );
  }
}
