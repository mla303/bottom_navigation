import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/material.dart';

class Messages_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MessagesColor,
      body: Center(
        child: Container(
          child: Text("Messages",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
