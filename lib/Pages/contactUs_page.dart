import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ContactColor,
      body: Center(
        child: Container(
          child: Text("Contact Us",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
