///Plaсeholder для экрана с табами

import 'package:flutter/material.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/res/constants.dart';

class PlaceholderWidget extends StatelessWidget {
  final String assetImage;
  final String title;
  final String message;
  const PlaceholderWidget({
    this.assetImage,
    this.title,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(assetImage),
        SizedBox(
          height: placeHolderPaddingToTitle,
        ),
        Text(
          title,
          style: placeHolderTitleTestStyle,
        ),
        SizedBox(
          height: placeHolderPaddingToMessage,
        ),
        Text(
          message,
          style: placeHolderMessageTestStyle,
        ),
      ],
    );
  }
}
