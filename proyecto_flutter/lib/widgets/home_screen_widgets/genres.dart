import 'package:flutter/material.dart';

// ignore: camel_case_types
class Selected_Genre extends StatelessWidget {
  const Selected_Genre({super.key, required this.genre});

  final genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 40, 83, 255),
          width: 2.0,
        )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          genre,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Unselected_Genre extends StatelessWidget {
  const Unselected_Genre({super.key, required this.genre});

  final genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          genre,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
