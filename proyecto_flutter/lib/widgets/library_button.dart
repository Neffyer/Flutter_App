import 'package:flutter/material.dart';

class Library_Button extends StatelessWidget {
  const Library_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: Icon(
        Icons.table_rows_rounded,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}