import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/back_button.dart';
import 'package:proyecto_flutter/widgets/share_button.dart';
import 'package:proyecto_flutter/api/film_api.dart';

// ignore: camel_case_types
class Image_Section extends StatelessWidget {
  const Image_Section({super.key});

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
              'https://i.blogs.es/3e839c/star-wars/1366_2000.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Back_Button(),
              Share_Button(),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                "Star Wars",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 1.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
