import 'package:flutter/material.dart';

class Share_Button extends StatelessWidget {
  const Share_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: Icon(
        Icons.share_outlined,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}