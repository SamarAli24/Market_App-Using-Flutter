import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



import 'home.dart';
import 'logout.dart';
import 'hpage.dart';
import 'favorite.dart';
import 'about.dart';
import 'location.dart';



void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Login(),
    );
  }
}