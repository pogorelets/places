import 'package:flutter/material.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/screen/sight_card.dart';

import '../../mocks.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: myToolbarHeight,
        backgroundColor: Colors.transparent,
        elevation: appBarElevation,
        title: Padding(
          padding: EdgeInsets.only(top: titlePaddingTop),
          child: Text(
            titleSignLightScreen,
            textAlign: TextAlign.left,
            style: mainAppBarTextStyle,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(mainPadding),
        child: Column(
          children: [
            SightCard(mocks[0]),
            SightCard(mocks[1]),
            SightCard(mocks[2]),
            SightCard(mocks[3]),
            SightCard(mocks[4]),
            SightCard(mocks[5]),
            SightCard(mocks[6]),
            SightCard(mocks[7]),
            SightCard(mocks[8]),
            SightCard(mocks[9]),
          ],
        ),
      ),
    );
  }
}
