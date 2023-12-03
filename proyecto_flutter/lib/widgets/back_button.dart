import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 18,
        color: Colors.grey,
      ),
    );
  }
}