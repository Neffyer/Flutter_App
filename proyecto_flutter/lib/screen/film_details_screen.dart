import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/buttons_bio.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/film_summary.dart';
import 'package:proyecto_flutter/api/film_api.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/image_section.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/title_container.dart';

class FilmDetailsScreen extends StatelessWidget {
  const FilmDetailsScreen({
    super.key,
    //required this.film,
  });

  //final Film film;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: SizedBox(
          child: Column(
            children: [
              Image_Section(),
              TitleContainer(),
              BioButtons(),
              FilmSummary(),
            ],
          ),
        ),
      ),
    );
  }
}
