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
      appBar: const CustomAppBar(
        height: myToolbarHeight,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: mainPadding, right: mainPadding),
        child: Column(
          children: [
            SightCard(sight:mocks[0]),
            SightCard(sight:mocks[1]),
            SightCard(sight:mocks[2]),
            SightCard(sight:mocks[3]),
            SightCard(sight:mocks[4]),
            SightCard(sight:mocks[5]),
            SightCard(sight:mocks[6]),
            SightCard(sight:mocks[7]),
            SightCard(sight:mocks[8]),
            SightCard(sight:mocks[9]),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(
          top: appBarPaddingTop,
          left: mainPadding,
          right: mainPadding,
          bottom: mainPadding,
        ),
        child: Text(
          titleSignLightScreen,
          textAlign: TextAlign.left,
          style: mainAppBarTextStyle,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
