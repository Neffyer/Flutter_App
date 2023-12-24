import 'package:flutter/material.dart';

// ignore: camel_case_types
class Library_Button extends StatelessWidget {
  const Library_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: const Icon(
        Icons.home_rounded,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}