import 'package:flutter/material.dart';

class Home_Button extends StatelessWidget {
  const Home_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: Icon(
        Icons.home_rounded,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}
