import 'package:flutter/material.dart';

class TitleListStyle extends StatelessWidget {
  final String text;

  const TitleListStyle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      const TextStyle(
          color :  const Color(0xff133C55),
          fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
