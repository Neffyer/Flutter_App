import 'package:flutter/material.dart';

class BioButtons extends StatelessWidget {
  const BioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            SelectedButton(button: "Description"),
            UnselectedBioButton(unButton: "Specifications"),
            UnselectedBioButton(unButton: "Reviews"),
          ],
        ),
      ),
    );
  }
}

class SelectedButton extends StatelessWidget {
  const SelectedButton({super.key, required this.button});

  final button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 40, 83, 255),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            button,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class UnselectedBioButton extends StatelessWidget {
  const UnselectedBioButton({super.key, required this.unButton});

  final unButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            unButton,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
