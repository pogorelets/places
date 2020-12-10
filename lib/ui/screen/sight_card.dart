import 'package:flutter/cupertino.dart';
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
    return Padding(
      padding: const EdgeInsets.only(bottom: mainPadding),
      child: Column(
        children: [
          Container(
            height: heightImage,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(radiusImage),
                      topRight: Radius.circular(radiusImage),
                    ),
                  ),
                ),
                Positioned(
                  top: mainPadding,
                  left: mainPadding,
                  child: Text(
                    sight.type,
                    style: typeTextStyle,
                  ),
                ),
                Positioned(
                  top: topLike,
                  right: rightLike,
                  child: Container(
                    color: Colors.red,
                    width: widthLike,
                    height: heightLike,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(mainPadding),
            width: double.infinity,
            color: bkgCardSightColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.nameSights,
                  style: headCardTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: minPaddingDetail),
                  child: Text(
                    sight.details,
                    style: cardTextStyle,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
