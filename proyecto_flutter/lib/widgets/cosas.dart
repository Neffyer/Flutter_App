import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/genres.dart';

class Cosas extends StatelessWidget {
  const Cosas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Unselected_Genre(genre: "Action"),
              Unselected_Genre(genre: "Sci-Fi"),
              Selected_Genre(genre: "Anime"),
              Unselected_Genre(genre: "Horror"),
              Unselected_Genre(genre: "Romantic"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "New",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "View all >",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
