import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/bar_widget.dart';
//import 'package:proyecto_flutter/api/film_api.dart';
//import 'package:proyecto_flutter/models/film_class.dart';
//import 'package:proyecto_flutter/widgets/back_button.dart';
import 'package:proyecto_flutter/widgets/image_section.dart';
//import 'package:proyecto_flutter/widgets/share_button.dart';

class FilmDetailsScreen extends StatelessWidget {
  const FilmDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      /*appBar: AppBar(
        title: const Text(
          "Film Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        leading: null,
      ),*/
      body: SizedBox(
        child: Column(
          children: [
            Image_Section(),
            BarWidget(),
          ],
        ),
      ),
    );
  }
}
