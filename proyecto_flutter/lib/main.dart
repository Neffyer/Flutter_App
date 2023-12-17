import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/screen/film_details_screen.dart';
import 'package:proyecto_flutter/screen/list_screen.dart';
import 'package:proyecto_flutter/screen/home_screen.dart';
import 'package:proyecto_flutter/api/film_api.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const ListScreen(),
        "/filmDetailsScreen": (context) => const FilmDetailsScreen(),
      }
    );
  }
}



