import 'package:flutter/material.dart';

const double paddingSize = 24;
const double infoSectionRadius = 40;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _pad(Widget child) => Padding(
        padding: const EdgeInsets.fromLTRB(paddingSize, 0, paddingSize, 0),
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 43, 43),
      appBar: AppBar(
        title: Container(
          child: Text("Home",
          style: TextStyle(fontWeight: FontWeight.bold,)),
        ),
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)!.settings.name != "/filmDetailsScreen") {
              Navigator.pushReplacementNamed(context, "/filmDetailsScreen");
            }
          },
          child: Container(
            child: Stack(
              children: [
                Text(
                  "Star Wars",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
