import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SettingColor,
      body: Center(
        child: Container(
          child: Text("Setting",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
