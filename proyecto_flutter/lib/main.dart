import 'package:flutter/material.dart';
import 'package:proyecto_flutter/screen/film_details_screen.dart';
import 'package:proyecto_flutter/screen/screen_base.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const ScreenBase(),
        '/filmDetailsScreen': (context) => const FilmDetailsScreen(),
      },
    );
  }
}