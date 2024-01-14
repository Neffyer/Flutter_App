import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://cdn.icon-icons.com/icons2/2716/PNG/512/user_icon_172810.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.grey[200]
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 23, 23, 23),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
