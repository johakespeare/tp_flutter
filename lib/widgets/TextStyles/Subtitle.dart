import 'package:flutter/material.dart';

class SubtitleStyle extends StatelessWidget {
  final String text;

  const SubtitleStyle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      const TextStyle(
          color :Colors.white,
          fontSize: 18,

        fontFamily: 'Starjedi',
      ),
    );
  }
}

