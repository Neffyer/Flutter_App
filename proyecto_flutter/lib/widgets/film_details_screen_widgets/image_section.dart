import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';
import 'package:proyecto_flutter/widgets/back_button.dart';
import 'package:proyecto_flutter/widgets/share_button.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.film,});

  final Film film;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: 400,
      child: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: 400,
            child: Image.network(
              film.bigImage,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Back_Button(parentContext: context,),
                const Share_Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
