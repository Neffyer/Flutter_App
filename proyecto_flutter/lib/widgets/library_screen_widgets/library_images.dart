import 'package:flutter/material.dart';

class LibraryImages extends StatelessWidget {
  const LibraryImages({super.key, required this.link});

  final link;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(link),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}