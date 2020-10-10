import 'package:bottom_navigation/Pages/contactUs_page.dart';
import 'package:bottom_navigation/Pages/home_page.dart';
import 'package:bottom_navigation/Pages/messages_page.dart';
import 'package:bottom_navigation/Pages/profile_page.dart';
import 'package:bottom_navigation/Pages/setting_page.dart';
import 'package:bottom_navigation/Widget/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'Vertical_presenter.dart';



class navigation_bar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBar();
  }
}

class NavigationBar extends State<navigation_bar> {

  List<Widget> _pages;
  Widget _page1;
  Widget _page2;
  Widget _page3;
  Widget _page4;
  Widget _page5;


  int _currentIndex;
  Widget _currentPage;


  @override
  void initState() {
    super.initState();

    _page1 = Messages_Page();
    _page2 = Page2();
    _page3 = HomePage();
    _page4 = ContactUsPage();
    _page5 = ProfilePage();

    _pages = [_page1, _page2, _page3, _page4, _page5];

    _currentIndex = 0;
    _currentPage = _page1;
  }


  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(




      theme: ThemeData(
          primarySwatch: Colors.grey,

          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.grey),
          )),
      home: Scaffold(


        key: _scaffoldKey,

        body: _currentPage,
        bottomNavigationBar: SizedBox(height: 52,
          child: BottomNavigationBar(

            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Color(0xffED7457),
            elevation: 2,
            onTap: (int index) {
              setState(() {
                // if (_currentIndex == 3 || _selectedTab == 4)
                //   {
                //     Navigator.pushReplacement(context,
                //         PageTransition(
                //           type:PageTransitionType.topToBottom,
                //           child: verticalPresenter(),
                //         ));
                //   }
                changeTab(index);
              });
            },


            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                title: Text('Messages',style: TextStyle(fontSize: height/60),),
              ),BottomNavigationBarItem(
                icon: Icon(Icons.settings_applications_outlined),
                title: Text('Setting',style: TextStyle(fontSize: height/60),),
              ),BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                title: Text('Home',style: TextStyle(fontSize: height/60),),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                title: Text('contact us',style: TextStyle(fontSize: height/60),),
              ), BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('person',style: TextStyle(fontSize: height/60),),
              ),



            ],
          ),
        ),
      ),
    );
  }

  Widget Page2() {

    return Scaffold(
      backgroundColor: SettingColor,
      body: Center(
        child: FlatButton(
          onPressed: ()
          {
            changeTab(4);
          },
          color: Colors.blueGrey,
          child: Text("Go to Profile",
            style: TextStyle(color: textColor,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

