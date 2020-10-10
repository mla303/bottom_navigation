import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class VerticalPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vertical1Color,
      body: Center(
        child: Container(
          child: Text("Vertical 1",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
