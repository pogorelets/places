import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_details.card.dart';

import 'ui/screen/sight_card.dart';
import 'ui/screen/sight_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SightDetails(),//SightListScreen(),
    );
  }
}
