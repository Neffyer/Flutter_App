import 'package:flutter/material.dart';

class Search_Button extends StatelessWidget {
  const Search_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: Icon(
        Icons.search_rounded,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}
