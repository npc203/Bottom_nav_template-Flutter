import 'package:flutter/material.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';
import 'pages/page4.dart';

final Map<Widget, Widget> pages = {
  Icon(Icons.home, size: 30): Page1(),
  Icon(Icons.list, size: 30): Page2(),
  Icon(Icons.face, size: 30): Page3(),
  Icon(Icons.settings, size: 30): Page4(),
};
