import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key, required this.film,});

  final Film film;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Container(
        width: screenSize.width,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 40, 83, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Text(
                film.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 1.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
