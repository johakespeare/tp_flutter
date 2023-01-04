import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/screens/PlanetsScreen.dart';
import 'dart:async';
import 'package:universal_io/io.dart';
import 'dart:convert';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      systemNavigationBarColor: Colors.black
    ),


  );
  runApp( const PlanetsScreen());
}


