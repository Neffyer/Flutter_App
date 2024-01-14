import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/buttons_bio.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/film_summary.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/image_section.dart';
import 'package:proyecto_flutter/widgets/film_details_screen_widgets/title_container.dart';

class FilmDetailsScreen extends StatelessWidget {
  const FilmDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final film = ModalRoute.of(context)!.settings.arguments as Film;
    return _FilmDetailsScreenImplementation(film: film);
  }
}

class _FilmDetailsScreenImplementation extends StatefulWidget {
  const _FilmDetailsScreenImplementation({
    required this.film,
  });

  final Film film;

  @override
  State<_FilmDetailsScreenImplementation> createState() =>
      _FilmDetailsScreenImplementationState();
}

class _FilmDetailsScreenImplementationState
    extends State<_FilmDetailsScreenImplementation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: SizedBox(
          child: Column(
            children: [
              ImageSection(film: widget.film),
              TitleContainer(film: widget.film),
              BioButtons(),
              FilmSummary(film: widget.film),
            ],
          ),
        ),
      ),
    );
  }
}
