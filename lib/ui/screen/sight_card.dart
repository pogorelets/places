import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/constants.dart';
import 'package:places/ui/res/text_styles.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              height: kHeightImage,
              child: Stack(
                children: [
                  Container(color: Colors.blue),
                  Positioned(
                    top: kTopLike,
                    right: kRightLike,
                    child: Container(
                      color: Colors.red,
                      width: kWidthLike,
                      height: kHeightLike,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(kMainPadding),
                width: double.infinity,
                color: kBkgCardSightColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sight.nameSights,
                      style: kHeadCardTextStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: kPaddingTopTextDetail),
                      child: Text(
                        sight.details,
                        style: kCardTextStyle,
                      ),
                    )
                  ],
                ))
          ],
        ),
      );

  }
}
