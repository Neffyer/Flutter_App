import 'package:flutter/material.dart';

class SearchingGenres extends StatelessWidget {
  const SearchingGenres({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ROwOfGenres(
            genre1: "Adventure",
            genre2: "Comedy",
          ),
          ROwOfGenres(
            genre1: "Drama",
            genre2: "Fantasy",
          ),
          ROwOfGenres(
            genre1: "Horror",
            genre2: "For Kids",
          ),
          ROwOfGenres(
            genre1: "Thriller",
            genre2: "Romance",
          ),
          ROwOfGenres(
            genre1: "Sci-Fi",
            genre2: "Sports",
          ),
        ],
      ),
    );
  }
}

class ROwOfGenres extends StatelessWidget {
  const ROwOfGenres({super.key, required this.genre1, required this.genre2});

  final genre1, genre2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 83, 83, 83),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                genre1,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 83, 83, 83),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                genre2,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
