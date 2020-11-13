import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() => runApp(MaterialApp(
      title: 'Radar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainApp(),
    ));

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final PageController _pageController = PageController();
  int _index;

  @override
  void initState() {
    super.initState();
    _index = 0;
  }

  Future<bool> _onWillPop() {
    if (_pageController.page.round() == _pageController.initialPage)
      return Future.value(true);
    else {
      //Comment this and uncomment the below commented lines if you need to go back to the previousPage.
      _pageController.jumpToPage(0);
      /*
      _pageController.previousPage(
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      */
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: PageView(
            controller: _pageController,
            children: pages.values.toList(),
            onPageChanged: (int index) {
              setState(() {
                _index = index;
                _pageController.jumpToPage(index);
              });
            }),
        bottomNavigationBar: CurvedNavigationBar(
          height: 50.0,
          index: _index,
          items: pages.keys.toList(),
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int index) {
            setState(() {
              _index = index;
              _pageController.jumpToPage(index);
            });
          },
        ),
      ),
    );
  }
}
