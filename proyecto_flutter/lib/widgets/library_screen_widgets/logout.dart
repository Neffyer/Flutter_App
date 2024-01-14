import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.logout_rounded,
          color: Colors.grey[400],
          size: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "Logout",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
