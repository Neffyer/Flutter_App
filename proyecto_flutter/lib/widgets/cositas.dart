import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/mas_cosas.dart';

class Cositas extends StatelessWidget {
  const Cositas({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MasCosas(),
        MasCosas(),
        MasCosas(),
        MasCosas(),
        MasCosas(),
        MasCosas(),
      ],
    );
  }
}