import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/search_screen_widgets/by_genres.dart';
import 'package:proyecto_flutter/widgets/search_screen_widgets/genres_section.dart';
import 'package:proyecto_flutter/widgets/search_screen_widgets/search_section.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  /*Widget _pad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );*/

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: Column(
          children: [
            SearchSection(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 40.0, left: 20.0),
                child: Text(
                  "Explore by your favorite genres",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: SearchHorizontalScroll(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                child: Text(
                  "Explore these genres",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SearchingGenres(),
          ],
        ),
      ),
    );
  }
}
