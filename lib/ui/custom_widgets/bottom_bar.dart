///Виджет, содержащий разметку-заглушку для нижней навигации

import 'package:flutter/material.dart';
import 'package:places/ui/res/constants.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: heightBottomBarLine,
          color: const Color(0xFF7C7E92).withOpacity(0.56),
        ),
        SizedBox(
          height: bottomBarHeight,
          child: Row(
            children: [
              BottomButtonWidget(
                urlImage: "res/bottom_navigation/list.png",
              ),
              BottomButtonWidget(
                urlImage: "res/bottom_navigation/Map.png",
              ),
              BottomButtonWidget(
                urlImage: "res/bottom_navigation/Subtract.png",
              ),
              BottomButtonWidget(
                urlImage: "res/bottom_navigation/Settings.png",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BottomButtonWidget extends StatelessWidget {
  final String urlImage;

  const BottomButtonWidget({this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset(
          urlImage,
        ),
      ),
    );
  }
}
