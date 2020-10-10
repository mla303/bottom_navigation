import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class VerticalPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vertical2Color,
      body: Center(
        child: Container(
          child: Text("Vertical 2",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
