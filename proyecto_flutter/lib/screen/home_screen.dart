import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 35, 86, 128),
        foregroundColor: Colors.white,
        leading: null,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        child: GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)!.settings.name != "/filmDetailsScreen") {
              Navigator.pushReplacementNamed(context, "/filmDetailsScreen");
            }
          },
          child: Text(
            "Star Wars",
           style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
          ),
        ),
      ),
    );
  }
}
