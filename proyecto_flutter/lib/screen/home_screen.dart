import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/cosas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /*Widget _pad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );*/

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 23, 23),
    );
  }
}
