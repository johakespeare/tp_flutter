import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Person.dart';
import 'PersonCard.dart';

class PersonDetailsScreen extends StatelessWidget {
  final Person person;

  PersonDetailsScreen(this.person);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailsWidget(person),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  final Person person;

  DetailsWidget(this.person);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFC00022),
                    Color(0xFF2A0108),
                    Colors.black,
                    Color(0xFF0A061A),
                    Color(0xFF180F41)],
                )),
            padding: EdgeInsets.all(15),

            child: PersonCard(person),
          ),


    );
  }
}





