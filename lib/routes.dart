import 'package:flutter/material.dart';

import 'pages/mappage.dart';

final Map<Widget, Widget> pages = {
  Icon(Icons.home, size: 30): MapPage(),
  Icon(Icons.coronavirus, size: 30): MapPage(),
  Icon(Icons.face, size: 30): MapPage(),
  Icon(Icons.settings, size: 30): MapPage(),
};
