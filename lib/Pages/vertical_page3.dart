import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class VerticalPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vertical3Color,
      body: Center(
        child: Container(
          child: Text("Vertical 3",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}
