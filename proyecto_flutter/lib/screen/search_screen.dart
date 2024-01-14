import 'package:flutter/material.dart';
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
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SearchingGenres(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
