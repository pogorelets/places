///Карточка месте, её можно тоже сделать на основе MainCard

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
  Widget build(BuildContext context)  {
    return Padding(
      padding: const EdgeInsets.only(bottom: mainPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heightImage,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - mainPadding * 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(radiusImage),
                      topRight: Radius.circular(radiusImage),
                    ),
                    child: Image.network(
                      sight.url,
                      fit: BoxFit.fitWidth,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null)
                          return child;
                        else
                          return CircularProgressIndicator();
                      },
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
                    child: Image.asset("res/icons/heart.png"),
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
              decoration: BoxDecoration(
                color: bkgCardColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(radiusImage),
                  bottomRight: Radius.circular(radiusImage),
                ),
              ),
              padding: const EdgeInsets.only(
                left: mainPadding,
                right: mainPadding,
              ),

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
