import 'package:flutter/material.dart';

class Back_Button extends StatelessWidget {
  const Back_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          if (ModalRoute.of(context)!.settings.name != "/") {
            Navigator.pushReplacementNamed(context, "/");
          }
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
