import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeColor,
      body: Center(
        child: Container(
          child: Text("Home",
          style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
