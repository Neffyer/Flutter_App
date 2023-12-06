import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/home_button.dart';
import 'package:proyecto_flutter/widgets/library_button.dart';
import 'package:proyecto_flutter/widgets/search_button.dart';

class BarWidget extends StatelessWidget {
  const BarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey,
        //boxShadow: 
      ),
      child: Center(
        child: Row(
          children: [
            Home_Button(),
            Search_Button(),
            Library_Button(),
          ],
        ),
      ),
    );
  }
}
