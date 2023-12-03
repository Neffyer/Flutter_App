import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: const Icon(
        Icons.share_outlined,
        size: 20,
        color: Colors.grey,
      ),
    );
  }
}