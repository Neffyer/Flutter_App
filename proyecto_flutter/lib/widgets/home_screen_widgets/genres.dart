import 'package:flutter/material.dart';

class SelectedGenre extends StatelessWidget {
  const SelectedGenre({super.key, required this.genre});

  // ignore: prefer_typing_uninitialized_variables
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

class UnselectedGenre extends StatelessWidget {
  const UnselectedGenre({super.key, required this.genre});

  // ignore: prefer_typing_uninitialized_variables
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
