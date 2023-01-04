import 'package:flutter/material.dart';

class TitleStyle extends StatelessWidget {
  final String text;

  const TitleStyle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      const TextStyle(
          color :Colors.white,
          fontSize: 24,

        fontFamily: 'Starjedi',
      ),
    );
  }
}

