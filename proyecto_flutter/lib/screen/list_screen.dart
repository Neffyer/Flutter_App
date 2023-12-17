import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

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