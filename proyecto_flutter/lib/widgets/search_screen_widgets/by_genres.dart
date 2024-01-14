import 'package:flutter/material.dart';

class SearchHorizontalScroll extends StatelessWidget {
  const SearchHorizontalScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 150.0,
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
