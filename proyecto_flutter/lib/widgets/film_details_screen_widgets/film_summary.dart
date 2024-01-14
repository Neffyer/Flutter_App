import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';

class FilmSummary extends StatelessWidget {
  const FilmSummary({
    super.key,
    required this.film,
  });

  final Film film;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: screenSize.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black87,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            film.synopsis,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
