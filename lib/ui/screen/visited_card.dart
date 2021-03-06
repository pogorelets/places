///Карточка посещенных мест на основе MainCard

import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/text_styles.dart';

import '../custom_widgets/card.dart';

class VisitedSightCard extends StatelessWidget {
  final Sight sight;

  const VisitedSightCard({this.sight});

  @override
  Widget build(BuildContext context) {

    return MainCard(
      sight: sight,
      textColumn: getTextColumn(),
      buttons: getButtons(),
    );
  }

  List<Widget> getTextColumn(){
    return [
      SizedBox(
        height: mainPadding,
      ),
      Text(
        sight.nameSights,
        style: headCardTextStyle,
      ),
      SizedBox(
        height: minPaddingDetail,
      ),
      Text(
        sight.visitDate,
        style: cardTextStyle,
      ),
      SizedBox(
        height: mainPadding,
      ),
      Text(
        sight.timeTable,
        style: cardTextStyle,
      ),
    ];
  }

  List<Widget> getButtons() {
    return [
      Positioned(
        top: topLike,
        right: rightLike,
        child: Container(
          child: Image.asset("res/icons/close.png"),
          width: widthLike,
          height: heightLike,
        ),
      ),
      Positioned(
        top: topLike,
        right: 56.0,
        child: Container(
          child: Image.asset("res/icons/share.png"),
          width: widthLike,
          height: heightLike,
        ),
      ),
    ];
  }

}
