import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 100.0),
          child: SearchBar(
            hintText: "¿Qué quieres ver hoy?",
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.mic_rounded,
                  size: 35,
                  color: Colors.grey[300],
                ),
                Icon(
                  Icons.search_rounded,
                  size: 38,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
