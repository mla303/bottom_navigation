import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProfileColor,
      body: Center(
        child: Container(
          child: Text("Profile",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
