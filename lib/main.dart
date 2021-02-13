import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_details.card.dart';
import 'package:places/ui/screen/visiting_screen.dart';

import 'mocks.dart';
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
      home: VisitingScreen(
        planSights: [mocks[0], mocks[1]],
        visitedSights: [mocks[2], mocks[3]],
      ),
      //SightDetails(), SightListScreen(),

    );
  }
}
