import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        leading: null,
      ),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)!.settings.name != "/filmDetailsScreen") {
              Navigator.pushReplacementNamed(context, "/filmDetailsScreen");
            }
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
