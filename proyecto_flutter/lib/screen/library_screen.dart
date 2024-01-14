import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/library_screen_widgets/profile_widget.dart';

class Library_Screen extends StatelessWidget {
  const Library_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 23, 23),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: ProfileWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
