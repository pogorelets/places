///Индикатор для табов Хочу посетить/Посетил
///На входе списов виджетов активная/неактивная вкладка

import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/text_styles.dart';

class IndicatorVisitingTabWidget extends StatelessWidget {
  final List<Widget> widgets;
  const IndicatorVisitingTabWidget({
    this.widgets,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: bkgCardColor,
            borderRadius: BorderRadius.circular(indicatorBorderRadius),
          ),
          height: customIndicatorsHeight,
        ),
        Row(
          children: widgets,
        )
      ],
    );
  }
}

class InActiveTabWidget extends StatelessWidget {
  final String text;
  const InActiveTabWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Center(
          child: Text(
            text,
            style: inactiveIndicatorTextStyle,
          ),
        ));
  }
}

class ActiveTabIndicatorWidget extends StatelessWidget {
  final String text;
  const ActiveTabIndicatorWidget({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: customIndicatorsHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(indicatorBorderRadius),
          color: activeIndicatorColor,
        ),
        child: Center(
            child: Text(
              text,
              style: activeIndicatorTextStyle,
            )),
      ),
    );
  }
}