import 'package:flutter/material.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.notifications_rounded,
            size: 35,
            color: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
