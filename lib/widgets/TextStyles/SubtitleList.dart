import 'package:flutter/material.dart';
class SubtitleListStyle extends StatelessWidget {
  final String text;

  const SubtitleListStyle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
      const TextStyle(
        color :const Color(0xff386FA4),
        fontSize: 16,
        fontWeight: FontWeight.normal
      ),
    );
  }
}
