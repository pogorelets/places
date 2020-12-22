///Карточка мест, которые хочу посетить на основе MainCard

import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/text_styles.dart';
import '../custom_widgets/card.dart';

class PlanSightCard extends StatelessWidget {
  final Sight sight;

  const PlanSightCard({this.sight});

  @override
  Widget build(BuildContext context) {
    List<Widget> textColumn =  [
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
          sight.planDate,
          style: cardGreenTextStyle,
        ),
        SizedBox(
          height: mainPadding,
        ),
        Text(
          sight.timeTable,
          style: cardTextStyle,
        ),
      ];


    List<Widget> buttons = [
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
          child: Image.asset("res/icons/calendar.png"),
          width: widthLike,
          height: heightLike,
        ),
      ),
    ];

    return MainCard(
      sight: sight,
      textColumn: textColumn,
      buttons: buttons,
    );
  }
}
