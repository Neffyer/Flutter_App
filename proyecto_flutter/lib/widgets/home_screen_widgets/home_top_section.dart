import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/home_screen_widgets/genres.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UnselectedGenre(genre: "Action"),
              UnselectedGenre(genre: "Sci-Fi"),
              SelectedGenre(genre: "Anime"),
              UnselectedGenre(genre: "Horror"),
              UnselectedGenre(genre: "Romantic"),
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
                  fontSize: 18,
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
        ),
        HorizontalScroll(),
      ],
    );
  }
}

class HorizontalScroll extends StatelessWidget {
  const HorizontalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 110.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Image(
                image: NetworkImage(
                    "https://media.kitsu.io/anime/poster_images/22/large.jpg?1431697256"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Image(
                image: NetworkImage(
                    "https://media.kitsu.io/anime/poster_images/24/large.jpg?1431697256"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Image(
                image: NetworkImage(
                    "https://media.kitsu.io/anime/poster_images/25/large.jpg?1431697256"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Image(
                image: NetworkImage(
                    "https://media.kitsu.io/anime/poster_images/26/large.jpg?1431697256"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: const Image(
                image: NetworkImage(
                    "https://media.kitsu.io/anime/poster_images/30/large.jpg?1431697256"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
