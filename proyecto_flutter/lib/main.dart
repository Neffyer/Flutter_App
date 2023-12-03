import 'package:flutter/material.dart';
import 'package:proyecto_flutter/screen/film_details_screen.dart';
import 'package:proyecto_flutter/screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeScreen(),
        "/filmDetailsScreen": (context) => const FilmDetailsScreen(),
      }
    );
  }
}
