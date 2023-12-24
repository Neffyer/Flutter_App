import 'package:flutter/material.dart';
//import 'package:proyecto_flutter/api/film_api.dart';
//import 'package:proyecto_flutter/models/film_class.dart';
//import 'package:proyecto_flutter/widgets/back_button.dart';
import 'package:proyecto_flutter/widgets/image_section.dart';
//import 'package:proyecto_flutter/widgets/share_button.dart';

class FilmDetailsScreen extends StatelessWidget {
  const FilmDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 43, 43),
      body: SizedBox(
          child: Image_Section(),
      ),
    );
  }
}
