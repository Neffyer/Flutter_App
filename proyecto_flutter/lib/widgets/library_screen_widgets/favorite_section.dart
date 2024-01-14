import 'package:flutter/material.dart';

class FavoriteSection extends StatelessWidget {
  const FavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.favorite_rounded,
                size: 35,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Liked",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}