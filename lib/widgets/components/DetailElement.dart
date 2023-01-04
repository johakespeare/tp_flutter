
import 'package:flutter/material.dart';


class DetailsElement extends StatelessWidget {
  final String text;

  const DetailsElement(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Text(
        this.text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

}