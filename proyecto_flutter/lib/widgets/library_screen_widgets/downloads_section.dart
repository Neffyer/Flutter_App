import 'package:flutter/material.dart';

class DownloadIcon extends StatelessWidget {
  const DownloadIcon({super.key});

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
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Icons.download_rounded,
                size: 35,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "Downloaded",
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

class DownloadImages extends StatelessWidget {
  const DownloadImages({super.key, required this.link});

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
