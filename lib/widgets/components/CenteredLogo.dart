import 'package:flutter/cupertino.dart';

class CenteredLogo extends StatelessWidget {
  final double height;

  CenteredLogo({this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/logo.png', height: height),
      alignment: Alignment.center,
    );
  }
}