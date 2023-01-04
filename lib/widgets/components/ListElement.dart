import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/TextStyles/SubtitleList.dart';
import 'package:flutter_project/widgets/TextStyles/TitleList.dart';

class ListElement extends StatelessWidget {
  String township;
  String department;


  ListElement(this.township,this.department, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleListStyle(township),
          const SizedBox( height: 5,),
          SubtitleListStyle(department)

        ],
      )
      ,
    );

  }

}