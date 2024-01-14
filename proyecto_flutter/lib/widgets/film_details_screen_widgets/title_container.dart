import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Container(
        width: screenSize.width,
        height: 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 40, 83, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(8.0),
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
        ),
      ),
    );
  }
}
