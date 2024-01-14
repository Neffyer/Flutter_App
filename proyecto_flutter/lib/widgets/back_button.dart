import 'package:flutter/material.dart';

// ignore: camel_case_types
class Back_Button extends StatelessWidget {
  const Back_Button({super.key, required this.parentContext,});

  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.of(parentContext).pushNamed('/');
        },
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
