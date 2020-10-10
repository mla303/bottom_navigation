import 'package:bottom_navigation/Pages/vertical_page1.dart';
import 'package:bottom_navigation/Pages/vertical_page2.dart';
import 'package:bottom_navigation/Pages/vertical_page3.dart';
import 'package:flutter/material.dart';

import 'NavigationBar.dart';



class verticalPresenter extends StatefulWidget {
  @override
  _verticalPresenterState createState() => _verticalPresenterState();
}

class _verticalPresenterState extends State<verticalPresenter> {


  int currentIndexPage;
  int pageLength;

  @override
  void initState()
  {
    currentIndexPage = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        PageView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            VerticalPage1(),
            VerticalPage2(),
            VerticalPage3(),
            navigation_bar(),

          ],
          onPageChanged: (value) {
            setState(() => currentIndexPage = value);
          },
        ),

      ],
    ));
  }
}

