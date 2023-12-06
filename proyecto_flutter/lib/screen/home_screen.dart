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
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)!.settings.name !=
                  "/filmDetailsScreen") {
                Navigator.pushReplacementNamed(context, "/filmDetailsScreen");
              }
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: const Color.fromARGB(255, 230, 229, 229),
            ),
          ),
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
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
            body: Stack(
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
