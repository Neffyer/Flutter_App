import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/back_button.dart';
import 'package:proyecto_flutter/widgets/share_button.dart';


class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

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
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Back_Button(),
                Share_Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
