import 'package:flutter/material.dart';
import 'package:proyecto_flutter/models/film_class.dart';

class Film_Class_Item extends StatelessWidget {
  const Film_Class_Item({super.key, required this.film});

  final Film film;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: SizedBox(
          width: 50,
          height: 50,
          child: Align(
            alignment: Alignment.center,
            child: Image.network(
              'https://i.blogs.es/3e839c/star-wars/1366_2000.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          "BBBBBBBBBB",
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        subtitle: Text(
          "CCCCCCCCCCCCCCC",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}