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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heightImage,
            child: Stack(
              children: [
                Center(child: CircularProgressIndicator()),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(sight.url),
                      fit: BoxFit.fitWidth,
                    ),
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
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                left: mainPadding,
                right: mainPadding,
              ),
              color: bkgCardSightColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                    sight.details,
                    style: cardTextStyle,
                  ),
                  SizedBox(
                    height: mainPadding,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
