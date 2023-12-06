import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: 
          Text(
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

class New_Scroll extends StatelessWidget {
  const New_Scroll();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 30),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Image.network('https://i.blogs.es/3e839c/star-wars/1366_2000.jpg'),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}
